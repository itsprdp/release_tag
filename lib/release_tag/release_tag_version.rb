module ReleaseTag
  class ReleaseTagVersion
    def initialize
      @tags =  %x[ git tag ].split("\n")
      @current_tag = (@tags.size > 0)? @tags.last : "v0.1.0"
      @current_version = @current_tag.gsub("v","")
      @major, @minor, @patch = @current_version.split(".").map(&:to_i)
    end

    def tags
      @tags
    end

    def current_tag
      @current_tag
    end

    def bump_version release_type, metadata
      case release_type
      when "major"
        @major += 1
        @minor = @patch = 0
      when "minor"
        @minor += 1
        @patch = 0
      when "patch"
        @patch += 1
      else # Default case
        @patch += 1
      end

      bumped_version = "v#{@major}.#{@minor}.#{@patch}"

      (metadata)? bumped_version + "-#{metadata}" : bumped_version
    end

    def next_tag release_type="patch", metadata=nil
      bump_version(release_type, metadata)
    end
  end
end
