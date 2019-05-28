class Project < ApplicationRecord
  has_many :users
  has_many :favorites

  validates :name, presence: true
  validates :organization, presence: true
  validates :org_description, presence: true
  validates :short_description, presence: true, length: { maximum: 100 }
  validates :short_description, presence: true
  validates :location, presence: true
  validates :photo, presence: true
  validates :long_description, presence: true
  # validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, :on => :create
end
