class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :cidery, optional: true
  enum role: {normal: 0, rep: 1, super: 2}
  has_many :saved_drinks
  has_many :saved, through: :saved_drinks, source: :drink
end