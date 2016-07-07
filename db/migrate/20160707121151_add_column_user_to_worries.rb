class AddColumnUserToWorries < ActiveRecord::Migration[5.0]
  def change
    add_reference :worries, :user, foreign_key: true
  end
end
