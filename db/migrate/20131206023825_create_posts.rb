class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :filepath

      t.belongs_to :family
      t.belongs_to :user
      t.belongs_to :category
      t.belongs_to :post_type

      t.timestamps
    end
  end
end
