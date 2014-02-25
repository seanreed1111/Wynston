class User < ActiveRecord::Base
  attr_accessible :picture, :remote_picture_url
	mount_uploader :picture, PictureUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
                    :first_name, :last_name, :username,:image_url,
                    :about_me,:type,:course_register,:phone,:institution, 
                    :location, :gender, :birthday, :education

  def roles=(role)
    self.type = role
  end

  def roles
    self.type
  end
end
