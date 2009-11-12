class Task
  attr_accessor :name, :done, :list, :dismissed

  def initialize(name)
    @name = name
    @done = false
    @list = :open        # or :closed or :review
    @dismissed = false
  end

  def do
    @done = true
  end

  def dismiss
    @dismissed = true
  end

  def to_s
    if @done
        "[X] #{@name}"
    elsif @dismissed
        "[D] #{@name}"
    elsif @list == :review
        "[R] #{@name}"
    else
        "[ ] #{@name}"
    end
  end

end


class AFList
  
  def initialize
    @myList = []
    @mode = :open # or :closed or :review
  end

  def add(name)
    task = Task.new(name)
    @myList << task
  end

  def to_s
    @myList.each {|t| puts t}
  end

  def current
    #  return current task
  end

  def do
    # call do on current task
  end

  def work
    # call workon on current task
  end

  def skip
    # call skip on current task
  end

end

af = AFList.new
af.add "pick up veggies"
af.add "grill chicken"
af.add "buy pio"
puts af

puts 
