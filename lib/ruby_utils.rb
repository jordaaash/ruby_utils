require 'ruby_utils/version'
require 'active_support/dependencies/autoload'

module RubyUtils
  extend ActiveSupport::Autoload

  autoload :AbstractClass
  autoload :IndifferentSet
  autoload :LazyHash
  autoload :LazyIndifferentHash
  autoload :ScopedLazyHash
  autoload :ScopedLazyIndifferentHash
  autoload :Void
end
