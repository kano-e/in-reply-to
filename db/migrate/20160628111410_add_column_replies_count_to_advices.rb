class AddColumnRepliesCountToAdvices < ActiveRecord::Migration[5.0]
  def change
    add_column :advices, :replies_count, :integer
  end
end
