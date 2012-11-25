# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  email        :string(255)
#  oauth_key    :string(255)
#  oauth_secret :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :oauth_key, :oauth_secret
  has_many :trips

  validates_uniqueness_of :email

  def self.create_with_omniauth(auth)
    create! do |user|
      user.email = auth["info"]["email"]
      user.name = auth["info"]["name"]
      user.oauth_key = auth["credentials"]["token"]
      user.oauth_secret = auth["credentials"]["secret"]
    end
  end
end
