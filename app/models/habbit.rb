# == Schema Information
#
# Table name: habbits
#
#  id          :integer          not null, primary key
#  description :string
#  points      :integer
#  virtue      :integer
#  active      :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Habbit < ApplicationRecord
  belongs_to :user
  has_many :actions
end
