class ChangeParticipants < ActiveRecord::Migration[7.0]
  def change
    remove_column(:participants, :game_point, :integer, :default => 0)
    remove_column(:participants, :total_point, :integer, :default => 0)
    remove_column(:participants, :first, :integer, :default => 0)
    remove_column(:participants, :second, :integer, :default => 0)
    remove_column(:participants, :third, :integer, :default => 0)
    remove_column(:participants, :fourth, :integer, :default => 0)
    remove_column(:participants, :total_games, :integer, :default => 0)
  end
end
