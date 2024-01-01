class ModelProvider < ApplicationRecord
  has_many :models, dependent: :destroy
end
