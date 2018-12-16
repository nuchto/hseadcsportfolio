class Group < ApplicationRecord
  mount_uploader :groupcover, GroupcoverUploader
  has_many :people
  has_many :projects
end
