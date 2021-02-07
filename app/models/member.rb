class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  validates :firstname, length: { maximum: 20}, presence: true
  validates :lastname, length: { maximum: 20}, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: Devise.email_regexp
  has_one :borrow
  has_many :books, through: :borrow

end
