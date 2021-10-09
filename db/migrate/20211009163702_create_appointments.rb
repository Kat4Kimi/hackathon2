class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :vet
      t.string :groomer
      t.string :training
      t.belongs_to :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end