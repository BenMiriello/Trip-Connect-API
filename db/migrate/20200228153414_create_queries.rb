class CreateQueries < ActiveRecord::Migration[6.0]
    def change
        create_table :queries do |t|
            t.references :user, null: false, foreign_key: true 
            t.string :originLocationCode
            t.string :destinationLocationCode
            t.datetime :departureDate
            t.datetime :returnDate
            t.string :travelClass
            t.integer :adults
            t.integer :children
            t.integer :infants
            t.integer :nonStop
            t.integer :maxPrice
            t.boolean :complete, :default => false

            t.timestamps
        end
    end
end
