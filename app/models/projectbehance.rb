class Projectbehance < ApplicationRecord
  mount_uploader :workbehance, WorkbehanceUploader
  belongs_to :project
  has_many :group, :optional => true
  has_many :person, :optional => true
end
