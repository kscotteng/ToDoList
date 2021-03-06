# ToDoItem class

class ToDoItem
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end

  # create a method to mark the ToDoItem complete
  # when a method changes a receiver, it can be considered a bang method
  def mark_complete!
    @complete = true
  end

  # create a method to mark the ToDoItem incomplete
  def mark_incomplete!
    @complete = false
  end

  # create a method to determine if ToDoItem in complete or incomplete
  def complete?
    @complete
  end

  # create a method to convert @complete to a string (for output purposes)
  # [C] = complete, [I] = Incomplete
  def to_s
    if complete?
      "[C] #{name}"
    else
      "[I] #{name}"
    end
  end
  
end
