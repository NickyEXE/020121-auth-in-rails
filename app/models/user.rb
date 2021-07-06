class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :likes

  def self.find_or_create_from_google(user_info)
    find_or_create_by(email: user_info[:email]) do |user|
      user.username = user_info[:name]
      user.profile_pic = user_info[:image]
      user.password = SecureRandom.hex
    end
  end

end
