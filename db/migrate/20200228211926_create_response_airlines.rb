class CreateResponseAirlines < ActiveRecord::Migration[6.0]
    def change
        create_table :response_airlines do |t|
            t.references :airline, null: false, foreign_key: true
            t.references :response, null: false, foreign_key: true

            t.timestamps
        end
    end
end
