class CreateJoinTableTopicOfInterestsUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :topic_of_interests, :users do |t|
       #t.index [:topic_of_interest_id, :user_id]
       #t.index [:user_id, :topic_of_interest_id]
    end
  end
end
