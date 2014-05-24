require 'ruby_utils/lazy_indifferent_hash'

module RubyUtils
  class ScopedLazyIndifferentHash < LazyIndifferentHash
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

ScopedLazyIndifferentHash = RubyUtils::ScopedLazyIndifferentHash
