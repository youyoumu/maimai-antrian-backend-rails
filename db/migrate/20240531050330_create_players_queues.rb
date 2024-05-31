class CreatePlayersQueues < ActiveRecord::Migration[7.1]
  def change
    create_table :players_queues do |t|
      t.string :players
      t.references :user, null: false, foreign_key: true
      t.integer :room_id

      t.timestamps
    end
  end
end
