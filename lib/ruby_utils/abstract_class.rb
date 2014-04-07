module RubyUtils
  module AbstractClass
    def self.extended (base)
      base.instance_eval do
        self.abstract_class = true if respond_to? :abstract_class=
        unless instance_variable_defined? :@abstract_class
          @abstract_class = true
        end
      end
    end

    def new (*)
      if @abstract_class
        raise NotImplementedError,
              "#{self} is an abstract class and cannot be instantiated."
      end
      super
    end

    def inherited (subclass = nil, &block)
      if subclass.nil?
        (@_inherited_blocks ||= []) << block
      else
        super
        if instance_variable_defined? :@_inherited_blocks
          @_inherited_blocks.each { |inherit| subclass.instance_eval &inherit }
        end
      end
    end
  end
end
