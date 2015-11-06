class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.integer :article_id
      t.timestamps null: false
    end
  end
end
