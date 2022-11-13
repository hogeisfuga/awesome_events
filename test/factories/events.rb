# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  end_at     :datetime         not null
#  name       :string           not null
#  place      :string           not null
#  start_at   :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#
# Indexes
#
#  index_events_on_owner_id  (owner_id)
#
FactoryBot.define do
  factory :event do
    owner
    sequence(:name) { |i| "イベント-#{i}"}
    sequence(:place) { |i| "場所-#{i}"}
    sequence(:content) { |i| "内容-#{i}"}
    start_at { rand{1..30}.days.from.now }
    end_at { start_at + rand{1..30}.days.from.now }
  end
end
