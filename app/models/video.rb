# == Schema Information
#
# Table name: videos
#
#  id                  :integer          not null, primary key
#  title               :string
#  desc                :text
#  teacher             :string
#  course_id           :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  attach_file_name    :string
#  attach_content_type :string
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#

class Video < ActiveRecord::Base
  belongs_to :course
  has_one :image, as: :imageable, dependent: :destroy
end
