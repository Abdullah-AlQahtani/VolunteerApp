class CreateAppUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :app_users do |t|
      t.integer :opportunity_id
      t.integer :user_id
      t.boolean :confirmed

      t.timestamps
    end
  end
end
