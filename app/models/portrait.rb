class Portrait < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
