# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  image_url  :string           not null
#  name       :string           not null
#  provider   :string           not null
#  uid        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_provider,_and_uid  ("provider,", "uid") UNIQUE
#
FactoryBot.define do
  factory :user, aliases: [:owner] do
    provider { "github" }
    sequence(:uid) { |i| "uid#{i}"}
    sequence(:name) { |i| "name-#{i}"}
    sequence(:image_url) { |i| "http://exammple.com/image#{i}.jpg"}
  end
end
