class Project < ApplicationRecord
  mount_uploader :work, WorkUploader
  mount_uploader :workcover, WorkcoverUploader
  belongs_to :group, :optional => true
  belongs_to :person, :optional => true
  has_many :projectbehances
  has_many :projectportfolios
  has_many :projectsites
  validates :group_id, presence: true
  validates :project_id, presence: true

end
