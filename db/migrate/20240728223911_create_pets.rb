class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal
      t.string :color
      t.string :size
      t.string :birth_date

      t.timestamps
    end
  end
end
