class AddColumnUserToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_reference :accounts, :user, foreign_key: true
  end
end
