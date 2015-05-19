class CreateThinkContents < ActiveRecord::Migration
  def change
    create_table :think_contents do |t|
      t.string :content_type
      t.text :text

      t.timestamps 
    end
  end
end