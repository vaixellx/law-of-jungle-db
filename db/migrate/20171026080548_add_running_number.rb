class AddRunningNumber < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :running_number, :integer

    running_number = 1
    Card.order(id: :asc).each do |card|
      card.update_column :running_number, running_number
      running_number += 1
    end
  end
end
