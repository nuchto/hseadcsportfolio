class Projectbehance < ApplicationRecord
  mount_uploader :workbehance, WorkbehanceUploader
  belongs_to :project, :optional => true
  has_many :group
  has_many :person
end
