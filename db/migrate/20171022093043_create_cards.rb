class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.text   :description
      t.string :status, default: 'draft'
      t.string :creator
      t.string :card_type
      t.text   :note

      t.timestamps
    end
  end
end
