class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
