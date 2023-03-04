class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.date :date, :null =>  false # 対戦日
      
      t.integer :first_participantID, :null =>  false   # 1位の参加者ID
      t.integer :first_score, :null =>  false           # 1位のスコア
      t.integer :second_participantID, :null =>  false  # 2位の参加者ID
      t.integer :second_score, :null =>  false          # 2位のスコア
      t.integer :third_participantID, :null =>  false   # 3位の参加者ID
      t.integer :third_score, :null =>  false           # 3位のスコア
      t.integer :fourth_participantID, :null =>  false  # 4位の参加者ID
      t.integer :fourth_score, :null =>  false          # 4位のスコア

      t.timestamps
    end
  end
end
