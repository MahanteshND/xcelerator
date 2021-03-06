class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :topic_of_interests

  validates :email, presence: true, :uniqueness => true
  validates :full_name, :presence => true, :length => { :in => 3..20 }

end
