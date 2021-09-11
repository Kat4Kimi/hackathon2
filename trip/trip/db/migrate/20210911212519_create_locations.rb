class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.belongs_to :trip1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
