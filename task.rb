class Task
  attr_reader :status
  attr_accessor :name

  def initialize(name)
    @name = name
    @status = :todo
  end

  def do
    @status = :done
  end


  def to_s
    if @status == :done
        "[X] #{@name}"
    else
        "[ ] #{@name}"
    end
  end

end

