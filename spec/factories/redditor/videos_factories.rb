FactoryGirl.define do
  factory :video, class: Redditor::VideoBlock do
    youtube "1"*11
    width "640"
    height "480"
  end
end