class CreateFamilyUsers< ActiveRecord::Migration
  def change
    create_table :family_users do |t|
      t.belongs_to :user
      t.belongs_to :family
      t.string :nickname
      t.boolean :admin, :default => 0

      t.timestamps
    end

  end
end
