class RemoveColumnTransactionIdFromGroups < ActiveRecord::Migration[6.0]
  def change
    remove_column :groups, :transaction_id
  end
end
