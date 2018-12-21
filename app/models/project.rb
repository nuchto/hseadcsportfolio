class Project < ApplicationRecord
  mount_uploader :work, WorkUploader
  mount_uploader :workcover, WorkcoverUploader
  belongs_to :group, :optional => true
  belongs_to :person, :optional => true
  validates :group_id, presence: true
end
