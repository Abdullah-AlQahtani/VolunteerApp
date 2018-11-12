class RemoveORganizationId < ActiveRecord::Migration[5.2]
  def change
    add_column :opportunities, :user_id, :integer
    remove_column :opportunities, :organization_id, :integer
  end
end
