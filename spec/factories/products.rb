# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  pricing             :decimal(10, 2)
#  description         :text
#  user_id             :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryGirl.define do
  factory :product do
    name "MyString"
    pricing "9.99"
    description "MyText"
    user nil
  end
end
