class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|

      t.text :name
      t.text :outline
      t.text :value
      t.timestamps null: false
    end
  end
end
