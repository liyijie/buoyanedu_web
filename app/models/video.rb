class Video < ActiveRecord::Base
  belongs_to :course
  validates :title, :video, presence: true
end
