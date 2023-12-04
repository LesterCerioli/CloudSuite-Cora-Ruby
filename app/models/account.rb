# app/models/account.rb

class Account < ApplicationRecord
  # Validations (you might need to adjust these based on your specific requirements)
  validates_presence_of :agency, :account_number, :account_digit, :bank_name, :bank_code

  # Constructor method for creating an Account
  def initialize(attributes = {})
    super
    self.agency ||= attributes[:agency]
    self.account_number ||= attributes[:account_number]
    self.account_digit ||= attributes[:account_digit]
    self.bank_name ||= attributes[:bank_name]
    self.bank_code ||= attributes[:bank_code]
  end
end