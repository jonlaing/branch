class AddAttachmentAvatarToProfiles < ActiveRecord::Migration
  def self.up
    change_table :matcher_profiles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :matcher_profiles, :avatar
  end
end
