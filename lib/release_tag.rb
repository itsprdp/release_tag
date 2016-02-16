require "release_tag/version"
require "release_tag/release_tag_version"

module ReleaseTag
  def self.current_tag
    ReleaseTagVersion.new.current_tag
  end

  def self.next_tag release_type="patch", metadata=nil
    ReleaseTagVersion.new.next_tag(release_type, metadata)
  end
end
