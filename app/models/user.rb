class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :favorites
  has_many :projects, through: :favorites

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def has_favorited?(project)
    Favorite.exists?(user_id: self.id, project_id: project.id)
  end
end
