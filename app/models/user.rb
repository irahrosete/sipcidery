class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :drinks
  belongs_to :cidery, optional: true
  enum role: {normal: 0, rep: 1, super: 2}
end