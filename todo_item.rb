# ToDoItem class

class ToDoItem
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end

end
