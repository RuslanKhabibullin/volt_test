class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :author_id, null: false
      t.datetime :published_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end

    add_index :posts, :author_id
  end
end
