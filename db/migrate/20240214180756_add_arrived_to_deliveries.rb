class AddArrivedToDeliveries < ActiveRecord::Migration[7.0]
  def change
    add_column :deliveries, :arrived, :boolean
  end
end
