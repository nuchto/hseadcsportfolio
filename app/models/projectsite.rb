class Projectsite < ApplicationRecord
  mount_uploader :worksite, WorksiteUploader
  belongs_to :project, :optional => true
  has_many :group
  has_many :person
end
