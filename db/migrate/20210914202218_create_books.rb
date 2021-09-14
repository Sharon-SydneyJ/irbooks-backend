class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :img_url
      t.string :title
      t.string :author
      t.integer :year_published
      t.text :description
      t.boolean :read

      t.timestamps
    end
  end
end
