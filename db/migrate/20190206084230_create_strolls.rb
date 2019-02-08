class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.string :event_name
      t.belongs_to :dog
      t.belongs_to :dogsitter
      t.timestamps
    end
  end
end
