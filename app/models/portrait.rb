class Portrait < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :person, :optional => true
end
