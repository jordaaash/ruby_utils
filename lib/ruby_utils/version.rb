require 'ruby_utils/gem_version'

module RubyUtils
  # Returns the version of the currently loaded RubyUtils as a <tt>Gem::Version</tt>
  def self.version
    gem_version
  end
end
