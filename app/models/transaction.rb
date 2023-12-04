class Transaction < ApplicationRecord

# Validations (you might need to adjust these based on your specific requirements)
  validates_presence_of :entry_amount, :entry_created_at, :entry_transaction_description, :entry_transaction_counter_party_name, :transaction_type_enum, :transaction_order, :entry_transaction_counter_party_identity

  # Enum for TransactionTypeEnum
  enum transaction_type_enum: { credit: 'credit', debit: 'debit' }

  # Constructor method for creating a Transaction
  def initialize(attributes = {})
    super
    self.entry_amount ||= attributes[:entry_amount]
    self.entry_created_at ||= attributes[:entry_created_at]
    self.entry_transaction_description ||= attributes[:entry_transaction_description]
    self.entry_transaction_counter_party_name ||= attributes[:entry_transaction_counter_party_name]
    self.transaction_type_enum ||= attributes[:transaction_type_enum]
    self.transaction_order ||= attributes[:transaction_order]
    self.entry_transaction_counter_party_identity ||= attributes[:entry_transaction_counter_party_identity]
  end

end
