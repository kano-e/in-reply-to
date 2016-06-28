class AddColumnClosedAtToWorries < ActiveRecord::Migration[5.0]
  def change
    add_column :worries, :closed_at, :datetime
  end
end
