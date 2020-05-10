# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :group_id
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
