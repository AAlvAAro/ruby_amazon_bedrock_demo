class CreateModelProviders < ActiveRecord::Migration[7.1]
  def change
    create_table :model_providers do |t|
      t.string :name
      t.text :description
      t.string :documentation_url

      t.timestamps
    end
  end
end
