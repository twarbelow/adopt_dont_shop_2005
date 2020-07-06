class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.integer :age
      t.string :sex
      t.string :image
      t.references :shelter,  foreign_key: true

      t.timestamps
    end
  end
end
