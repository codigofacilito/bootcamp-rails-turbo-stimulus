class Contact < ApplicationRecord
  has_one :person
  has_many :phone_numbers
  
  accepts_nested_attributes_for :phone_numbers, allow_destroy: true
  accepts_nested_attributes_for :person, allow_destroy: true
  
end
