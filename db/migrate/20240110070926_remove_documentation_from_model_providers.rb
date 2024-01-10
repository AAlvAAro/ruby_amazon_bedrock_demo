class RemoveDocumentationFromModelProviders < ActiveRecord::Migration[7.1]
  def change
    remove_column :model_providers, :documentation_url, :string
  end
end
