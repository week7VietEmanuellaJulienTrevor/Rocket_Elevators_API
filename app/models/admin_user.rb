class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :registerable, :omniauthable

  has_many :employees
  def display_name
    "#{email}"
  end
  has_many :customers
  def to_s
    "#{email}"
  end

  belongs_to :quote
  belongs_to :customer


  # SCOPES
  scope :filter_by_email, -> (email) { where email: email}
  
  # Assign admin role if user is an Employee
  def admin?
    employees = Employee.where(["email = ?", email])
    p "-----------------"
    p employees
    p Employee.all
    if employees.size > 0
      true
    end

    #@admin_users = @admin_users.filter_by_email(params[:email]) if params[:email] == params[:employees][:email]
    #if @admin_users.size == 1
      #return true
   # end
  end




  # Check if user is an employee
  #user = @admin_user 
  

  #user_email = params[:email]
  #employees = Employee.all

  #p employees
  #employees = employees.where(email: user_email)
  #p employees


  #if employees.size > 0


  #end
end
