class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :picture
      t.string :website
      t.string :ghrepo
      t.string :tool

      t.timestamps
    end
  end
end
