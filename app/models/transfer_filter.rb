class TransferFilter < ApplicationRecord

# Validations (you might need to adjust these based on your specific requirements)
  validates_presence_of :start_date, :end_date

  # Constructor method for creating a TransferFilter
  def initialize(attributes = {})
    super
    self.start_date ||= attributes[:start_date]
    self.end_date ||= attributes[:end_date]
    self.page ||= attributes[:page]
  end
end
