#!/usr/bin/ruby

require_relative 'task'

class List
  attr_accessor :listname,:count

  def initialize(name)
    @listname = name
    @list = []
    @count = 0
    puts "creating new list: #{@listname}..."
  end

  def skip
    puts "skipping #{@list[0]}..."
    @list.push(@list.shift)  # rotates item back to end of list
  end

  def do
    puts "doing #{@list[0]}..."
    @count -= 1
    @list.shift
  end

  def current_item
    @list[0].to_s
  end

  def to_s
    puts "#{@listname}"
    puts "------------"
    @list.each {|item| puts "#{item}"}
    puts " "
  end

  def add(item)
    puts "adding \"#{item}\" to #{@listname}..."
    @list[@list.length] = item
    @count += 1
  end

end

# a = List.new("Closed List",["dog","cat"])
t1 = Task.new("task1")
t2 = Task.new("task2")
t3 = Task.new("task3")
a = List.new("Closed List")
a.add(t1)
a.add(t2)
puts a
a.skip
puts a
a.add(t3)
puts a
a.skip
puts a
a.do
puts a

b = List.new "Open List"
puts b
b.add(a.do)
puts a
puts b
b.add(b.do)
puts b
