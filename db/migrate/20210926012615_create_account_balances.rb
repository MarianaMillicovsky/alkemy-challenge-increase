class CreateAccountBalances < ActiveRecord::Migration[6.1]
  def change
    create_table :account_balances do |t|

      t.timestamps
    end
  end
end
