class CreateJoinTablePrivateMessagesUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :private_messages, :users do |t|
      # t.index [:private_message_id, :user_id]
      # t.index [:user_id, :private_message_id]
    end
  end
end
