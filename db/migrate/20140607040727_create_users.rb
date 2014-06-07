class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :pref1
      t.text :pref2
      t.text :notes

      t.timestamps
    end
  end
end
