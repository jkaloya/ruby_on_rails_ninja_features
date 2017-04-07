class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :ninja_name
      t.text :ninja_description

      t.timestamps
    end
  end
end
