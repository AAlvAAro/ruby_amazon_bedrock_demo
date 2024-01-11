class AddActiveStatusToModelProviders < ActiveRecord::Migration[7.1]
  def change
    add_column :model_providers, :active, :bool, default: true
  end
end
