#!/usr/bin/ruby

require_relative 'task'

class List
  attr_accessor :name,:count

  def initialize(name,list)
    @name = name
    @list = list
    @count = @list.length
  end

  def skip
    puts "skipping #{@list[0]}..."
    @list.push(@list.shift)
  end

  def do
    puts "doing #{@list.first(1)}..."
    @count -= 1
    @list.shift
  end

  def to_s
    #@list.first(1).to_s
    @list[0].to_s
  end

  def add(item)
    puts "adding #{@list[0]} to #{@name}..."
    @list[@list.length] = item
    @count += 1
  end

  def rename(newName)
    if @list.length > 0
        @list[0] = newName
    else
        "empty list"
    end
  end
end

# a = List.new("Closed List",["dog","cat"])
t1 = Task.new("Feed dog")
t2 = Task.new("Feed cat")
a = List.new("Closed List",[t1,t2])
puts a
a.skip
puts a
a.add("v-chip")
puts a
a.skip
puts a
a.do
puts a

b = List.new("Open List",[])
puts b
b.add(a.do)
puts a
puts b
b.add(b.do)
puts b
#b.rename("fun-chip")
#puts b
