class Person < ApplicationRecord
 belongs_to :group, :optional => true
 has_many :projects
 has_many :portraits
 validates :group_id, presence: true
end
