class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :breed
      t.string :name
      t.string :weight
      t.string :dob
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
