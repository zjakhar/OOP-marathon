# require_relative "cages"

class Zoo
attr_reader :cages, :employees
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    10.times do
      @cages.push(Cage.new)
    end
  end

  def add_employee(employee)
    @employees.push(employee)
  end

  def open?(date)
    if @season_opening_date <= date && @season_closing_date >= date
      return true
    else
      return false
    end
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end
    return "Your zoo is already at capacity!"
  end

  def visit
    list = ""
    @employees.each do |employee|
      list += employee.greet + "\n"
    end
    @cages.each do |cage|
      if !cage.empty?
        list += cage.animal.speak + "\n"
      end
    end
    return list
  end
end
