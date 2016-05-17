class School
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def works
    "IT WORKS"
  end

  def late
    "#{name.upcase}, YOU ARE LATE!"
  end

  def detention
    "#{name.capitalize}, you are late, here is your detention."
  end

  def escape
    raise "This is an error - you shouldn't escape school!"
  end

  def gets_As
    "Well done, #{name}!"
  end

end
