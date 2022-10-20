class Train
  attr_accessor :destination, :number, :timeStart,
                :numberOfPlaces, :numberOfEconomy, :numberOfCompartment, :numberOfLuks

  def initialize(destination, number, timeStart, numberOfPlaces, numberOfEconomy, numberOfCompartment, numberOfLuks)
    @destination = destination
    @number = number
    @timeStart = timeStart
    @numberOfPlaces = numberOfPlaces
    @numberOfEconomy = numberOfEconomy
    @numberOfCompartment =numberOfCompartment
    @numberOfLuks = numberOfLuks
  end

  def to_s
    @destination.to_s + " " + @number.to_s + " " + @timeStart.to_s + " " +  @numberOfPlaces.to_s + " " + @numberOfEconomy.to_s + " " + @numberOfCompartment.to_s + " " + @numberOfLuks.to_s+"\n"
  end
end

class Trains

  @@trains = Array.new

  def initialize(setNewTrains)
    setNewTrains.each { |t| @@trains << t }
  end

  def task1(destination)
    print "task1 \n"
    @@trains.select { |t| t.destination == destination }.each { |t| print t }
  end

  def task2(destination, timeStart)
    print "task2 \n"
    @@trains.select { |t| t.destination == destination && t.timeStart > timeStart }.each { |t| print t }
  end

  def task3(destination)
    print "task3 \n"
    @@trains.select { |t| t.destination == destination && t.numberOfPlaces > 0 }.each { |t| print t }
  end
end
t1=Train.new("Dro", 1, 100, 10, 1,2,3)
t2=Train.new("Nor", 2, 100, 10, 1,2,3)
t3=Train.new("Por", 3, 120, 10, 1,2,3)
t4=Train.new("Kor", 4, 100, 30, 1,2,3)
t5=Train.new("Por", 5, 300, 20, 1,2,3)
t6=Train.new("Por", 6, 150, 0, 1,2,3)

list = Trains.new([t1,t2,t3,t4,t5,t6])
list.task1("Dro")
list.task2("Por", 110)
list.task3("Por")
