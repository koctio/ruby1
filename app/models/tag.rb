class TagValidator < ActiveRecord::Validator
  def validate(record)
    if record.factor_x.size != record.factor_y.size
      record.errors[:base] << 'Неравная длина'
      return false
    end
    return true
  end
end

class Tag < ApplicationRecord
  
  self.primary_key =:name
  has_and_belongs_to_many :tovar
  
  validates_with TagValidator
  
end
