class CreateMasterLookups < ActiveRecord::Migration[5.1]
  def change
    create_table :master_lookups do |t|
      t.string :key
      t.string :value
      t.string :category

      t.timestamps
    end
  end
end
