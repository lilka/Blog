class RemoveUniqueFromEmail < ActiveRecord::Migration[6.0]
  def change
    #Remove UNIQUE index
    remove_index :users, :email
    #Add regural index
    add_index :users, :email
  end
end
