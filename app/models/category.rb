class Category < ApplicationRecord
  has_many :dishes, dependent: :destroy

  validates :name, presence: true
end
