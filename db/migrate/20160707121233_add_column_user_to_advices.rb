class AddColumnUserToAdvices < ActiveRecord::Migration[5.0]
  def change
    add_reference :advices, :user, foreign_key: true
  end
end
