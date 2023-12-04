class CreateTransfers < ActiveRecord::Migration[7.1]
  def change
    create_table :transfers do |t|

      t.timestamps
    end
  end
end
