class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
                    :first_name, :last_name, :username,:image_url,:password_digest,
                    :image_url,:password_digest,:about_me,:user_flag,
                    :course_register,:phone,:institution

end
