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

  def get_receipts
    #p self.email
    #p self.oauth_key
    #p self.oauth_secret
    #gmail = Gmail.connect(:xoauth,  :email,
    #                      token:            :oauth_key,
    #                      secret:           :oauth_secret,
    #                      consumer_key:     ENV['CONSUMER_KEY'],
    #                      consumer_secret:  ENV['CONSUMER_SECRET']
    #)
    p '3' * 100
    #p gmail.inbox
    #gmail.inbox.find(from: 'supportsf@uber.com').each do |email|
    #  ap email
    #end

  end
end
