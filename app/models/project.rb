class Project < ApplicationRecord
  mount_uploader :work, WorkUploader
  mount_uploader :workcover, WorkcoverUploader
end
