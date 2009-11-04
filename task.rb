#!/usr/bin/ruby

class Task
  attr_accessor :name, :done
  
  def initialize(name)
    @name = name
    @done = false
  end

  def to_s
    if done
        "[X] " + @name
    else
        "[ ] " + @name
    end
  end

end
