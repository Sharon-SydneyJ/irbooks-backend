class CreateBookshelfBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookshelf_books do |t|
      t.references :bookshelf, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
