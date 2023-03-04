class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.text :name, :null => false          # 参加者名
      t.integer :handicap, :default => 0    # ハンディキャップ
      t.boolean :isMember, :default => true # FCメンバーかどうか？

      t.timestamps
    end
  end
end
