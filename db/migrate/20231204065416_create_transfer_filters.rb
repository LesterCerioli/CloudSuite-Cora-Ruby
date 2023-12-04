class CreateTransferFilters < ActiveRecord::Migration[7.1]
  def change
    create_table :transfer_filters do |t|

      t.timestamps
    end
  end
end
