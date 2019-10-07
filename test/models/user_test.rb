# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :string
#  cpf        :string
#  city       :string
#  state      :string
#  country    :string
#  img        :string
#  author     :string
#  address    :string
#  email      :string
#  linkedin   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
