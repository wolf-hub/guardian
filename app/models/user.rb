class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :person, dependent: :destroy
  has_one :age, dependent: :destroy
  has_one :relationship, dependent: :destroy
  has_one :spouse, dependent: :destroy
  has_one :state, dependent: :destroy
  has_many :children, dependent: :destroy       
end
