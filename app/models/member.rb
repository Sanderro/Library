class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  validates :firstname, length: { maximum: 20}
  validates :lastname, length: { maximum: 20}
  validates :email, presence: true, uniqueness: true
  validates :email, format: Devise.email_regexp
end
