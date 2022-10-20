
class Student
  attr_reader :name,
  :lastName,
  :fathersName,
  :sex,
  :age,
  :course
  public
  def initialize(name, lastName, fathersName, sex, age, course)
    @name, @lastName, @fathersName, @sex, @age, @course=name.to_s, lastName.to_s, fathersName.to_s, sex.to_s, age.to_i, course.to_i
  end
end

class Base
  @@students=Array.new
  def initialize(newStudents)
    newStudents.each{|e| @@students << e}
  end
  def printRes

    @@students.each do |t|
      print t.name,"\n"
    end
  end
  def findCourse
      numberOfMansOnCourses=Array.new(10,0)
    numberOfPeopleOnCourses=Array.new(10,0)
    @@students.each do |t|
      numberOfPeopleOnCourses[t.course]+=1
      if t.sex=="male"
        numberOfMansOnCourses[t.course]+=1
      end
    end
    resCourse=0;
    resCourseValue=0;

    for i in 1..9 do

      if numberOfPeopleOnCourses[i]>0 && resCourseValue<(numberOfMansOnCourses[i]*1.0/numberOfPeopleOnCourses[i])
        resCourseValue=(numberOfMansOnCourses[i]*1.0/numberOfPeopleOnCourses[i])
        resCourse=i
      end
    end
    return resCourse
  end
  def findMostPopularMaleName
    studentBiection = Hash.new(0)
    @@students.each do |student|
      if student.sex=="male"
        studentBiection[student.name] += 1
      end
    end
    result = studentBiection.sort_by { |name,number| number}.last[0]
    print result
  end
  def findMostPopularFemaleName
    studentBiection = Hash.new(0)
    @@students.each do |student|
      if student.sex=="female"
        studentBiection[student.name] += 1
      end
    end
    result = studentBiection.sort_by { |name,number| number}.last[0]
  end
  def findMostPopularAge
    studentBiection = Hash.new(0)
    @@students.each do |student|
      if student.sex=="female"
        studentBiection[student.age] += 1
      end
    end
    result = studentBiection.sort_by { |age,number| number}.last[0]
    return result
  end
  def sortedByLastName
    sorted = @@students.sort_by{|student| student.lastName}
    @@students.each do |student|
      print student.lastName,"\n"
    end
  end
  def getInitials
    requiredAge = findMostPopularAge
    @@students.each do |student|
      if student.sex=="female" && student.age==requiredAge
        print student.name.chr+"."+student.lastName.chr+"."+student.fathersName.chr,"\n"
      end

    end
  end
end

student1=Student.new("Bob", "Ros", "Qwer", "male", 19, 1)
student2=Student.new("Andr", "Rem", "Qwery", "male", 22, 3)
student3=Student.new("Marry", "Robs", "Werty", "female", 20, 1)
student4=Student.new("Andr", "Robs", "Werty", "male", 20, 1)

base = Base.new([student1, student2, student3, student4])
#base.printRes
print base.findCourse,"\n\n"
print base.findMostPopularMaleName,"\n\n"
print base.findMostPopularFemaleName,"\n\n"
base.sortedByLastName
print "\n"
base.getInitials
