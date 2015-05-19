class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.text :name
      t.text :issue
      t.text :ksf
      t.text :target
      t.timestamps null: false
    end
  end
end
