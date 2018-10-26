class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.string :name
      t.string :days
      t.text :description
      t.integer :fee
      t.integer :members
      t.string :location
      t.text :link
      t.integer :views
      t.integer :frequency
      t.string :title

      t.timestamps
    end
  end
end
