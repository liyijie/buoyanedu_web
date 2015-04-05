# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  desc           :string
#  imageable_id   :integer
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
end
