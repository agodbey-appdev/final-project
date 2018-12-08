# == Schema Information
#
# Table name: habbits
#
#  id          :integer          not null, primary key
#  description :string
#  points      :integer
#  active      :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Habbit < ApplicationRecord
  validates :description, presence: true, allow_blank: false
  validates :description, uniqueness: {scope: :user_id, case_sensitive: false,
                                       message: "You already have an active or inactive habbit with the same description"}
  belongs_to :user
  has_many :actions
end
