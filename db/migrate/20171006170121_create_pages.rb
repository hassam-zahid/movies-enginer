class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :url
      t.longtext :raw_data
      t.boolean :is_done
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
