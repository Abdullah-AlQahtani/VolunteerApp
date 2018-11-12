class CreateOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.integer :organization_id
      t.string :gender
      t.string :description
      t.string :location
      t.datetime :dateOfEvent

      t.timestamps
    end
  end
end
