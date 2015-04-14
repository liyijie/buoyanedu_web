class Video < ActiveRecord::Base
  belongs_to :course
  validates :title, :video, :introduce, :teacher, :poster, presence: true
end
