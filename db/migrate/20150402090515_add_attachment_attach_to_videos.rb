class AddAttachmentAttachToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :attach
    end
  end

  def self.down
    remove_attachment :videos, :attach
  end
end
