class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :blog

      t.timestamps
    end
  end
end
