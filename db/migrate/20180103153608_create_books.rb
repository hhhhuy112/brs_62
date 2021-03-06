class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.datetime :publish_date
      t.integer :number_of_pages
      t.string :image
      t.text :summary

      t.timestamps
    end
    add_index :books, :title
    add_index :books, :author
    add_index :books, :publish_date
  end
end
