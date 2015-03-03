class CreatePostTypes < ActiveRecord::Migration
  def change
    create_table :post_types do |t|
      t.string :name

      t.timestamps
    end

    PostType.create(name: "text")
    PostType.create(name: "image")
  end
end
