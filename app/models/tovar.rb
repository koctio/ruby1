class Tovar < ApplicationRecord
  
  belongs_to :group
  has_and_belongs_to_many :tag
  
  validates :name, presence: true
  
end
