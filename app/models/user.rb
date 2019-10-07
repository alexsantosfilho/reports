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

class User < ApplicationRecord
  has_many :hobbies
end
