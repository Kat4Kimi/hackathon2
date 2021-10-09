class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :food
      t.string :exercise
      t.string :potty
      t.string :other
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
