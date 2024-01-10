class AddKindToModels < ActiveRecord::Migration[7.1]
  def change
    add_column :models, :kind, :string, null: false, default: 'text'
  end
end
