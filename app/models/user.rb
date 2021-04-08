class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender

  with_options presence: true do
    validates :nickname, uniqueness: { case_sensitive: true }, length: { in: 3..12 }
    validates :gender_id, numericality: { other_than: 0 }
  end
  validates :email, uniqueness: { case_sensitive: true }
  validates :password, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ }, on: :create 

  has_many :comments, dependent: :destroy
  has_many :pictures, dependent: :destroy
end
