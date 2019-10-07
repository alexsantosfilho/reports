# == Schema Information
#
# Table name: hobbies
#
#  id         :integer          not null, primary key
#  text       :string
#  img        :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hobby < ApplicationRecord
  belongs_to :user
end
