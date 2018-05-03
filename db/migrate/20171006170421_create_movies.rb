class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :movie_url
      t.string :image_url
      t.string :discription
      t.string :year
      t.string :search_name
      t.boolean :is_active
      t.integer :views
      t.references :site, foreign_key: true
      t.timestamps
    end
    add_index :movies, :name
  end
end
