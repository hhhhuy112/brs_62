class CreateBuyRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :buy_requests do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
