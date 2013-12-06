class CreateUserFamilies < ActiveRecord::Migration
  def change
    create_table :user_families do |t|
      t.belongs_to :user
      t.belongs_to :family
      t.string :nickname

      t.timestamps
    end

  end
end
