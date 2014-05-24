require 'ruby_utils/lazy_hash'

module RubyUtils
  class ScopedLazyHash < LazyHash
    attr_accessor :scope

    def initialize (scope, *args)
      self.scope = scope
      super(*args)
    end

    private

    def evaluate (proc)
      scope.instance_exec(*args, &proc)
    end
  end
end

ScopedLazyHash = RubyUtils::ScopedLazyHash
