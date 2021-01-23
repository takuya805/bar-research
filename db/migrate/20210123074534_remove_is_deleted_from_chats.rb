class RemoveIsDeletedFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :is_deleted, :boolean
  end
end
