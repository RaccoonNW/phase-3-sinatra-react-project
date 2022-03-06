class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :gender
      t.boolean :lead
      t.integer :actor_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
