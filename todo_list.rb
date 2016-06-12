# Simple To Do List
# ToDoList Class

class ToDoList
  attr_reader :name, :todo_items

  def initialize(name)
    @name = name
    @todo_items = []
  end

end
