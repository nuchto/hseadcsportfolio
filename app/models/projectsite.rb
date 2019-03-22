class Projectsite < ApplicationRecord
  mount_uploader :worksite, WorksiteUploader
  belongs_to :project
  has_many :group, :optional => true
  has_many :person, :optional => true
end
