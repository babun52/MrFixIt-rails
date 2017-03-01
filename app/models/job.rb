class Job < ActiveRecord::Base
  validates :title, :description, :presence => true
end
