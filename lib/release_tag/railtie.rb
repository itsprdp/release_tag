require 'release_tag'
require 'rails'

module ReleaseTagVersion
  class Railtie < Rails::Railtie
    rake_tasks do
      require "release_tag"
    end
  end
end
