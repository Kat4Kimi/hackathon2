class CreateTrip1s < ActiveRecord::Migration[6.1]
  def change
    create_table :trip1s do |t|

      t.timestamps
    end
  end
end
