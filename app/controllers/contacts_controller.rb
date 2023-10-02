class ContactsController < ApplicationController
  def create
    email = contact_params[:email]
    message = contact_params[:message]

    if email.blank? || message.blank?
      render json: { error: 'Email and message are required' }, status: :unprocessable_entity
      return
    end

    @contact = Contact.new(email: email, message: message)

    begin
      @contact.save!  # Save to the database

      # Send the contact email
      ContactMailer.send_contact_email(email, message).deliver_now

      render json: { message: 'Email sent successfully' }, status: :ok
      flash[:success] = "Your email has been sent successfully !"
      redirect_to :root
    rescue StandardError => e
      # Handle the error and provide a meaningful error message
      render json: { error: 'An error occurred while sending the email', details: e.message }, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
