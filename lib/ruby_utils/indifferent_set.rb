require 'active_support/hash_with_indifferent_access'

module RubyUtils
  class IndifferentSet < Set
    # Modified from Set#initialize
    def initialize(enum = nil, &block)
      @hash ||= HashWithIndifferentAccess.new

      enum.nil? and return

      if block_given?
        do_with_enum(enum) { |o| add(block[o]) }
      else
        merge(enum)
      end
    end
  end
end

IndifferentSet = RubyUtils::IndifferentSet
