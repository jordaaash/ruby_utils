require 'active_support/hash_with_indifferent_access'

module RubyUtils
  class LazyIndifferentHash < HashWithIndifferentAccess
    attr_accessor :args

    def initialize (*args)
      self.args = args
    end

    def [] (key)
      value = super
      if value.is_a?(Proc)
        value     = evaluate(value)
        self[key] = value
      end
      value
    end

    private

    def evaluate (proc)
      proc.call(*args)
    end
  end
end

LazyIndifferentHash = RubyUtils::LazyIndifferentHash
