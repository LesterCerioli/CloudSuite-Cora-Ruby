class Customer <ApplicationRecord

  # Associations
  has_one :cnpj
  has_one :telephone
  # Validations (you might need to adjust these based on your specific requirements)
  validates_presence_of :social_reason, :responsible_contact

  # Getter and Setter methods for Cnpj
  def cnpj
    Cnpj.find_by(customer_id: id)
  end

  def cnpj=(value)
    cnpj = Cnpj.find_or_initialize_by(customer_id: id)
    cnpj.update(value)
  end

  def cnpj=(value)
    cnpj = Cnpj.find_or_initialize_by(customer_id: id)
    cnpj.update(value)
  end

  # Getter and Setter methods for Telephone
  def telephone
    Telephone.find_by(customer_id: id)
  end

  def telephone=(value)
    telephone = Telephone.find_or_initialize_by(customer_id: id)
    telephone.update(value)
  end
end
