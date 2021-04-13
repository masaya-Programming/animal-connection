class Picture < ApplicationRecord
  with_options presence: true do
    validates :image, presence: { message: "を選択してください" }
    validates :title
    validates :user_id
    validates :facility_id
  end

  belongs_to :user
  belongs_to :facility
  has_one_attached :image
end
