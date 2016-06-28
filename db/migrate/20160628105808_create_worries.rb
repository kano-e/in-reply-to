class CreateWorries < ActiveRecord::Migration[5.0]
  def change
    create_table :worries do |t|
      t.text :detail

      t.timestamps
    end
  end
end
