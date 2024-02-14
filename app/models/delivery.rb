# == Schema Information
#
# Table name: deliveries
#
#  id               :integer          not null, primary key
#  arrived          :boolean
#  description      :string
#  details          :string
#  expected_arrival :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#
class Delivery < ApplicationRecord
  validates :description, presence: true
  validates :supposed_to_arrive_on, presence: true
  
  belongs_to(:user)

  scope :received, -> { where(arrived: true) }
  scope :waiting_on, -> { where(arrived: false)}
end
