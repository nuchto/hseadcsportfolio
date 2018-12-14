class Project < ApplicationRecord
 mount_uploader :work, WorkUploader
 mount_uploader :projectcover, ProjectcoverUploader
end
