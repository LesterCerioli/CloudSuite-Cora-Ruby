# app/models/extract.rb

class Extract < ApplicationRecord
  enum entry_type: { credit: 'credit', debit: 'debit' }

  # Associations
  belongs_to :customer
  belongs_to :transaction

  # Validations (you might need to adjust these based on your specific requirements)
  validates_presence_of :start_date, :start_balance, :end_date, :end_balance, :entry_type, :customer, :transaction, :entry_amount, :header_business_name, :header_business_document

  # Constructor method for creating an Extract
  def initialize(attributes = {})
    super
    self.start_date ||= attributes[:start_date]
    self.start_balance ||= attributes[:start_balance]
    self.end_date ||= attributes[:end_date]
    self.end_balance ||= attributes[:end_balance]
    self.customer ||= attributes[:customer]
    self.transaction ||= attributes[:transaction]
    self.entry_type ||= attributes[:entry_type]
    self.entry_amount ||= attributes[:entry_amount]
    self.header_business_name ||= attributes[:header_business_name]
    self.header_business_document ||= attributes[:header_business_document]
    self.transactions ||= []
  end

  # Getter and Setter methods for Transactions
  def transactions
    Transaction.where(extract_id: id)
  end

  def transactions=(values)
    values.each do |transaction|
      transaction.extract_id = id
      transaction.save
    end
  end
end