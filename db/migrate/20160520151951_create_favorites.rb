class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.index :user_id
      t.index :tweet_id
      t.index :created_at
      t.timestamps null: false
    end
  end
end
