class Boleto < ApplicationRecord
  enum status: { pending: 'pending', paid: 'paid', canceled: 'canceled' }

  belongs_to :method

  before_create :set_defaults

  private

  def set_defaults
    self.created_at ||= Time.current
    self.finalized_at ||= Time.current
  end

end
