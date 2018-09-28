

class Group < ApplicationRecord
  
  has_many :tovar
  validates :name, {
    presence: true,
    uniqueness: {
      case_sensitive: false,
      message: 'Имя группы уже встречается'
    }
  }
  
end
