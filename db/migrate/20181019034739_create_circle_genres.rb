class CreateCircleGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :circle_genres do |t|
      t.references :circle,index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true

      t.timestamps
    end
  end
end
