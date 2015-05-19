class AddUserIdToInputs < ActiveRecord::Migration
  def change
    add_column :inputs, :user_id, :integer
  end
end
