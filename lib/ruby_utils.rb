require 'ruby_utils/version'

module RubyUtils
  autoload :AbstractClass,             'ruby_utils/abstract_class'
  autoload :IndifferentSet,            'ruby_utils/indifferent_set'
  autoload :LazyHash,                  'ruby_utils/lazy_hash'
  autoload :LazyIndifferentHash,       'ruby_utils/lazy_indifferent_hash'
  autoload :ScopedLazyHash,            'ruby_utils/scoped_lazy_hash'
  autoload :ScopedLazyIndifferentHash, 'ruby_utils/scoped_lazy_indifferent_hash'
  autoload :Void,                      'ruby_utils/void'
end
