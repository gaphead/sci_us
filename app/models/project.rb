class Project < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :users, through: :favorites

  include AlgoliaSearch
  algoliasearch do
    attribute :name, :short_description, :long_description
  end

  monetize :donation_cents

  validates :name, presence: true
  # validates :organization, presence: true
  # validates :org_description, presence: true
  # validates :short_description, presence: true, length: { maximum: 100 }
  validates :short_description, presence: true
  # validates :location, presence: true
  validates :photo, presence: true
  # validates :long_description, presence: true
  # validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, :on => :create
end
