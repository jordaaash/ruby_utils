require 'singleton'

module RubyUtils
  class Void
    include Singleton

    instance_methods.each { |m| undef_method(m) unless m =~ /\A(__|object_id)/ }

    def method_missing (*)
    end
  end
end

Void = RubyUtils::Void
