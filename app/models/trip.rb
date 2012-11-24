# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  date        :datetime
#  destination :string(255)
#  city        :string(255)
#  state       :string(255)
#  distance    :float
#  duration    :float
#  cost        :float
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Trip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :city, :cost, :date, :destination, :distance, :duration, :state
end
