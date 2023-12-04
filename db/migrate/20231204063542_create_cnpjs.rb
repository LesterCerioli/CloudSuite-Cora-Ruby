class CreateCnpjs < ActiveRecord::Migration[7.1]
  def change
    create_table :cnpjs do |t|
      t.string :number
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
