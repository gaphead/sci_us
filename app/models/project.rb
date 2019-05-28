class Project < ApplicationRecord
  has_many :users
  has_many :favorites
end
