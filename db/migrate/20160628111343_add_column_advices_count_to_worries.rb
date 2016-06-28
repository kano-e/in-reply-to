class AddColumnAdvicesCountToWorries < ActiveRecord::Migration[5.0]
  def change
    add_column :worries, :advices_count, :integer
  end
end
