class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true
  validates :phone_number, presence: true

  validates_format_of :phone_number, with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, message: "- must be in xxx-xxx-xxxx format."
end
