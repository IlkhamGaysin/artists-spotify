FactoryGirl.define do
  factory :bonus_text do
    transient do
      points

      receivers { [create(:user)] }
      usernames { receivers.map { |receiver| "@#{receiver.username}" }.join(" ") }

      tags { [create(:tag)] }
      hashtags { tags.map { |tag| "##{tag.label}" }.join(" ") }
    end

    text { "+#{points} to #{usernames} #{hashtags}" }
  end
end
