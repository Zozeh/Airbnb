class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
  	 create_table :cities do |t|
      t.string :city_name

      t.timestamps
    end

    create_table :dogsitters do |t|
      t.string :sitter_name
      t.belongs_to :citie
      t.timestamps
    end
  end
end
