class Comment < ApplicationRecord
  with_options presence: true do
    validates :text
    validates :user_id
    validates :facility_id
  end

  belongs_to :user
  belongs_to :facility
end
