class Favorite < ApplicationRecord
  validates_uniqueness_of :user_id, scope: :facility_id

  belongs_to :user
  belongs_to :facility
end
