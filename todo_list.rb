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

  # create a method that allows us to remove an item from the ToDoList
  def remove_item(name)
    # set an index variable at the 0th position for looping through the array
    index = 0
    # set a flag to determine whether or not we found a todo_item - starts off as false
    found = false
    # loop through todo_items and find matching items names, if match is found, set found to true
    todo_items.each do |todo_item|
      if todo_item.name == name
        found = true
      end
      # if a match is found, end
      if found
        break
        # if a match was not found, move to next index position in array and loop again
        else
          index += 1
      end
    end
      # if a match is found, the item at that index location will be removed
      if found
        todo_items.delete_at(index)
        return true
        else
        # if no match is found, false will be returned to found
        return false
      end
  end
end

# instantiating ToDoList class by:

todo_list = ToDoList.new("Groceries")
todo_list.add_item("Milk")
todo_list.add_item("Eggs")
system "clear"
puts todo_list.inspect
puts ""
if todo_list.remove_item("Eggs")
  puts "Eggs were removed from the list."
end
puts ""
puts todo_list.inspect
