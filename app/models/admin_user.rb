class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  
  has_many :employees
  def to_s
    "#{email}"
  end
  has_many :customers
  def to_s
    "#{email}"
  end
end
