class RemoveStatusFromDeliveries < ActiveRecord::Migration[7.0]
  def change
    remove_column :deliveries, :status
  end
end
