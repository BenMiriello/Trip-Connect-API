class CreateResponseAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :response_airports do |t|
      t.references :airport, null: false, foreign_key: true
      t.references :airline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
