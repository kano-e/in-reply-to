class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :provider
      t.string :uid
      t.json :credentials

      t.timestamps
      t.index [:provider, :uid], name: :idx_accounts_provider_uid, unique: true
    end
  end
end
