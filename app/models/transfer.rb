class Transfer < ApplicationRecord

# Associations
  belongs_to :account

  # Validations (you might need to adjust these based on your specific requirements)
  validates_presence_of :amoumt, :description, :code, :category, :bank_code_recipient, :branch_number_recipient, :account_number_recipient, :scheduled, :account_type, :status
  validates_numericality_of :amoumt, greater_than_or_equal_to: 0

  # Constructor method for creating a Transfer
  def initialize(attributes = {})
    super
    self.account ||= attributes[:account]
    self.amoumt ||= attributes[:amoumt]
    self.description ||= attributes[:description]
    self.code ||= attributes[:code]
    self.category ||= attributes[:category]
    self.creation_date ||= attributes[:creation_date] || Time.current
    self.bank_code_recipient ||= attributes[:bank_code_recipient]
    self.branch_number_recipient ||= attributes[:branch_number_recipient]
    self.account_number_recipient ||= attributes[:account_number_recipient]
    self.scheduled ||= attributes[:scheduled]
    self.account_type ||= attributes[:account_type]
    self.status ||= attributes[:status]
  end

end
