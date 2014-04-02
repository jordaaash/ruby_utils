require 'ruby_utils/version'
require 'active_support/dependencies/autoload'

module RubyUtils
  extend ActiveSupport::Autoload

  autoload :AbstractClass
  autoload :LazyHash
  autoload :Void
end
