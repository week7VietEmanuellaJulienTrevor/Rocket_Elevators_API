class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :registerable
  
  has_many :employees
  def display_name
    "#{email}"
  end
  has_many :customers
  def to_s
    "#{email}"
  end
end
