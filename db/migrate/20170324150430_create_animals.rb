class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :breed
      t.string :genre
      t.boolean :castrated
      t.date :birth
      t.string :name
      t.string :nameowner
      t.integer :phoneowner
      t.date :lastvisit

      t.timestamps
    end
  end
end
