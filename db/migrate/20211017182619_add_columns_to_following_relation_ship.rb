class AddColumnsToFollowingRelationShip < ActiveRecord::Migration[6.1]
  change_table :following_relationships do |t|
    t.integer :follower_id
    t.integer :followed_user_id
  end
end
