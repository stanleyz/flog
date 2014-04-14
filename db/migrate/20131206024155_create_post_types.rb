class CreatePostTypes < ActiveRecord::Migration
  def change
    create_table :post_types do |t|
      t.string :name

      t.timestamps
    end

    PostTypes.create(name: "text")
    PostTypes.create(name: "image")
  end
end
