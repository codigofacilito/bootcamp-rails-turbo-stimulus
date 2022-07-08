class Contact < ApplicationRecord
  has_one :person
  has_many :phone_numbers

  
end
