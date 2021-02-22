class TopicOfInterest < ApplicationRecord
  has_and_belongs_to_many :users
  validates :topic_name, presence: true, :uniqueness => true
end
