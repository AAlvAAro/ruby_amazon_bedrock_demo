class Model < ApplicationRecord
  belongs_to :model_provider

  validates :name, presence: true
  validates :bedrock_model_id, presence: true
end
