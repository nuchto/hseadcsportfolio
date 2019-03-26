class Projectportfolio < ApplicationRecord
  mount_uploader :workportfolio, WorkportfolioUploader
  belongs_to :project, :optional => true
  has_many :group
  has_many :person
end
