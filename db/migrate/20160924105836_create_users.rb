class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :integer1
      t.string :integer2
      t.integer :integer3
      t.string :status

      t.timestamps

    end
  end
end
