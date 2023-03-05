class CreateGrandSlums < ActiveRecord::Migration[7.0]
  def change
    create_table :grand_slums do |t|
      t.integer :participant_id, :null =>  false
      t.string :name, :null =>  false
      t.date  :date
      
      t.timestamps
    end
  end
end
