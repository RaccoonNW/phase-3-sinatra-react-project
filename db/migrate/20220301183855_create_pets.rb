class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :creature 
      t.integer :actor_id
      t.timestamps
    end
  end
end
