# Simple To Do List
# require access to todo_item.rb file
require "./todo_item.rb"

class ToDoList
  attr_reader :name, :todo_items

  def initialize(name)
    @name = name
    @todo_items = []
  end

  #add method that appends TodoItems to ToDoList
  def add_item(name)
    todo_items << (ToDoItem.new(name))
  end

end

# instantiating ToDoList class by:
#     adding "Groceries" to todo_list, and
#     adding "Milk" to todo_item
todo_list = ToDoList.new("Groceries")
todo_list.add_item("Milk")
# todo_item = ToDoItem.new("Milk")

puts todo_list.inspect
# puts todo_item.inspect

# puts todo_item
#
# todo_item.mark_complete!
# puts todo_item
# todo_item.mark_incomplete
