class User < ActiveRecord::Base

  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def greeting
    if Time.now.hour >= 17
      return "Good Evening"
    Time.now.hour > 12
      return "Good Afternoon"
    else
      return "Good Morning"
    end
  end
end
