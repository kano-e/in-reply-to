class AddColumnClosedAtToAdvices < ActiveRecord::Migration[5.0]
  def change
    add_column :advices, :closed_at, :datetime
  end
end
