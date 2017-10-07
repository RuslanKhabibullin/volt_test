class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.datetime :published_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.integer :post_id, null: false
      t.integer :author_id, null: false
      t.timestamps
    end

    add_index :comments, :post_id
    add_index :comments, :author_id
  end
end
