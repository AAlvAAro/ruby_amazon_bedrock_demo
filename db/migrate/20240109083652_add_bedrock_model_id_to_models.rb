class AddBedrockModelIdToModels < ActiveRecord::Migration[7.1]
  def change
    add_column :models, :bedrock_model_id, :string
  end
end
