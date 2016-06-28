class CreateAdvices < ActiveRecord::Migration[5.0]
  def change
    create_table :advices do |t|
      t.text :detail
      t.references :worry, foreign_key: true
      t.references :in_reply_to

      t.timestamps
    end
  end
end
