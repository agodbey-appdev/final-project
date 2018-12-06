# == Schema Information
#
# Table name: resets
#
#  id         :integer          not null, primary key
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reset < ApplicationRecord
  belongs_to :user
end
