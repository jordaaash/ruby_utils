module RubyUtils
  class LazyHash < Hash
    def [](k)
      v = super
      if v.respond_to?(:call)
        v       = v.call
        self[k] = v
      end
      v
    end
  end
end
