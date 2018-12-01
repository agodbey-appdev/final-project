# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  habbit_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Action < ApplicationRecord
  belongs_to :user
  belongs_to :habbit
end
