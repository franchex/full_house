class AddAmountToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :amount, :integer
  end
end
