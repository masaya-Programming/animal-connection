class Good < ApplicationRecord
  validates_uniqueness_of :user_id, scope: :picture_id

  belongs_to :user
  belongs_to :picture
end
