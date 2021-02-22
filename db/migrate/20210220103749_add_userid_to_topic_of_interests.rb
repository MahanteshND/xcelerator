class AddUseridToTopicOfInterests < ActiveRecord::Migration[6.0]
  def change
    add_column :topic_of_interests, :user_id, :integer
  end
end
