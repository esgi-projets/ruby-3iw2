class CreateDistances < ActiveRecord::Migration[6.1]
  def change
    create_table :distances do |t|
      t.string :from_address
      t.string :to_address
      t.string :vehicule_type

      t.timestamps
    end
  end
end
