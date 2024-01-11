class AddActiveStatusToModels < ActiveRecord::Migration[7.1]
  def change
    add_column :models, :active, :bool, default: true
  end
end
