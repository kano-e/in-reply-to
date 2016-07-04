class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :provider
      t.string :uid
      t.json :credentials

      t.timestamps
    end
  end
end
