class Object
  def with (scope, *args, &block)
    scope.instance_exec(*args, &block)
  end
end
