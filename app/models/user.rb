class User < ApplicationRecord   # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:username || :email]

  # def username
  #   email.split('@')[0].capitalize
  # end
end