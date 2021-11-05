class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.text :comment
      t.integer :user_id
      t.integer :post_image_id
      t.integer :following_id, null: false
      t.integer :follower_id, null: false

      t.timestamps
    end
  end
end
