module Kernel
  def require? (name)
    require(name)
    true
  rescue LoadError
    false
  end
end
