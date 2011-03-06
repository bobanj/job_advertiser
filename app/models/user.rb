class User < ActiveRecord::Base
  # Associations
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :avatar, :curriculum_vitae, :first_name, :first_name, :last_name, :street_name, :postcode,
                  :country, :mobile, :gender, :date_of_birth, :remote_curriculum_vitae_url, :remote_avatar_url
  # Uploaders
  mount_uploader :avatar, AvatarUploader
  mount_uploader :curriculum_vitae, CurriculumVitaeUploader

end