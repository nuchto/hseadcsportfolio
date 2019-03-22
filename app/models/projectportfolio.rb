class Projectportfolio < ApplicationRecord
  mount_uploader :workportfolio, WorkportfolioUploader
  belongs_to :project
  has_many :group, :optional => true
  has_many :person, :optional => true
end
