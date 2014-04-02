require 'active_support/core_ext/array/extract_options'

class Array
  def extract_defaults! (defaults, &block)
    options = extract_options!
    defaults.merge(options, &block)
  end

  def insert_defaults! (defaults, &block)
    self << extract_defaults!(defaults, &block)
  end

  def insert_options! (options, &block)
    self << extract_options!.merge(options, &block)
  end
end
