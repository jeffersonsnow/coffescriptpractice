# To begin, you've got to run the coffescript compiler in the terminal: coffee -wc *.coffee
# comments are just hash's
###
3 hash's for multiline comments
and stuff
###
name = "Phil" # there is no var and no semicolons
csOutput = document.getElementById("csoutput")

csOutput.innerHTML = "Hello #{name}<br>"

aString = "I'm a String"

csOutput.insertAdjacentHTML('beforeend', 'aString is a String<br>') if typeof aString is 'string'

largestNum = Number.MAX_VALUE
smallestNum = Number.MIN_VALUE

largeNumStr = "The largest number is #{largestNum}.<br>"

smallNumStr = "The smallest number is #{smallestNum}.<br>"

csOutput.insertAdjacentHTML('beforeend', largeNumStr + '<br>')
csOutput.insertAdjacentHTML('beforeend', smallNumStr + '<br>')

areYouHappy = no
csOutput.insertAdjacentHTML('beforeend', 'areYouHappy is a Boolean<br>') if typeof areYouHappy is 'boolean'

csOutput.insertAdjacentHTML('beforeend', "5 + 2 = #{5 + 2}<br>") # this interpolation needs to be between double quotes ("") other wise the math operation will not be executed
csOutput.insertAdjacentHTML('beforeend', "5 - 2 = #{5 - 2}<br>")
csOutput.insertAdjacentHTML('beforeend', "5 * 2 = #{5 * 2}<br>")
csOutput.insertAdjacentHTML('beforeend', "5 / 2 = #{5 / 2}<br>")
csOutput.insertAdjacentHTML('beforeend', "5 % 2 = #{5 % 2}<br>")

precisionTest = 0.1000000000000001;
csOutput.insertAdjacentHTML('beforeend', "Precision: #{precisionTest + 0.1000000000000011}<br>")

balance = 1563.87
csOutput.insertAdjacentHTML('beforeend', "Monthly Payment #{(balance/12).toFixed(2)}<br>")

randNum = 5
csOutput.insertAdjacentHTML('beforeend', "randNum++ = #{randNum++}<br>") # randNum is now equal to 6 but since the ++ is placed after the var being displayed before the incrementing is executed so it appears on the page as 5
csOutput.insertAdjacentHTML('beforeend', "++randNum = #{++randNum}<br>") #the randNum has been incremented up from 6 to 7 but it displays as seve on the page because the ++ comes before the var in the interpolation
csOutput.insertAdjacentHTML('beforeend', "randNum-- = #{randNum--}<br>")
csOutput.insertAdjacentHTML('beforeend', "--randNum = #{--randNum}<br>")

csOutput.insertAdjacentHTML('beforeend', "randNum+= 5: #{randNum+= 5}<br>") #you can use += as well as other similar operators
csOutput.insertAdjacentHTML('beforeend', "randNum *= 5: #{randNum*= 5}<br>")

#order of operations:
csOutput.insertAdjacentHTML('beforeend', "3 + 2 * 5 = #{3 + 2 * 5}<br>") #multiplication has a hire precendent over addition
csOutput.insertAdjacentHTML('beforeend', "(3 + 2) * 5 = #{(3 + 2) * 5}<br>") #parentheses have hire precedent than multiplication

#other maths:
csOutput.insertAdjacentHTML('beforeend', "Math.E = #{Math.E}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.PI = #{Math.PI}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.abs(-8) = #{Math.abs(-8)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.cbrt(1000) = #{Math.cbrt(1000)}<br>") #cuberoot
csOutput.insertAdjacentHTML('beforeend', "Math.ceil(6.45) = #{Math.ceil(6.45)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.floor(6.45) = #{Math.floor(6.45)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.round(6.45) = #{Math.round(6.45)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.log(10) = #{Math.log(10)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.log10(10) = #{Math.log10(10)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.pow(4,2) = #{Math.pow(4,2)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.sqrt(1000) = #{Math.sqrt(1000)}<br>")

#random
newRandNum = Math.floor(Math.random() * 100) + 1
csOutput.insertAdjacentHTML('beforeend', "Random Number = #{newRandNum}<br>")

#using strings
fName = "Jeff"
lName = "Snow"
csOutput.insertAdjacentHTML('beforeend', fName + " " + lName + "<br>")
longString = "This is such a long string but I'll use it."
csOutput.insertAdjacentHTML('beforeend', "String length : #{longString.length}<br>")
csOutput.insertAdjacentHTML('beforeend', "Index of String : #{longString.indexOf("but")}<br>")
csOutput.insertAdjacentHTML('beforeend', "Index 8's character : #{longString.charAt(8)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Word at 27 : #{longString.slice(27,31)}<br>")
csOutput.insertAdjacentHTML('beforeend', "After 27 : #{longString.slice(27)}<br>")
longString = longString.replace("use", "kick the crap out of")
csOutput.insertAdjacentHTML('beforeend', "New String : #{longString}<br>")
strArray = longString.split(" ")
csOutput.insertAdjacentHTML('beforeend', "New String split into an array : #{strArray}<br>")
for x in strArray
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
gappyString = "   Why so     so many    spaces?



"
csOutput.insertAdjacentHTML('beforeend', "String with gaps: #{gappyString}<br>")
gappyString = gappyString.trim() #removes extra spaces
csOutput.insertAdjacentHTML('beforeend', "String with trim function : #{gappyString}<br>")
csOutput.insertAdjacentHTML('beforeend', "Uppercase: #{longString.toUpperCase()}<br>")
csOutput.insertAdjacentHTML('beforeend', "Lowercase: #{longString.toLowerCase()}<br>")

###conditionals
We use indentation instead of brackets
== and !== are the same as === and !== normal JS.
###

# age = 50
age = 3
# age = 16
# age = 19
# age = 20
# age = 5
if age >= 18
  csOutput.insertAdjacentHTML('beforeend',
    "You can vote!<br>")

  if (age >= 16)
    csOutput.insertAdjacentHTML('beforeend',
      "You can drive also!<br>")

else if (age >=16)
  csOutput.insertAdjacentHTML('beforeend',
    "You can drive!<br>")
else
    csOutput.insertAdjacentHTML('beforeend',
      'You\'ll be 16 soon<br>')
unless (age >= 19)
    csOutput.insertAdjacentHTML('beforeend',
      'You\'ll be in school<br>')
else
    csOutput.insertAdjacentHTML('beforeend',
      'You may go to college<br>')
if !(age > 4) || (age > 65)
      csOutput.insertAdjacentHTML('beforeend',
        'You don\'t have to be in school<br>')
else if (age >= 5) && (age <= 6)
      csOutput.insertAdjacentHTML('beforeend',
        'Got to kindergarten<br>')
else if (age > 6) && (age <= 18)
      csOutput.insertAdjacentHTML('beforeend',
        'You don\'t have to be in school<br>')
      schoolGrade = "Go to Grade #{age - 5}<br>"

      csOutput.insertAdjacentHTML('beforeend',
        "#{schoolGrade}<br>")
else
      csOutput.insertAdjacentHTML('beforeend',
        "Go to work!<br>")

#ternary
votingAge = if age > 18 then true else false
csOutput.insertAdjacentHTML('beforeend',
  "Can I vote? #{votingAge}<br>")

#switch
# childAge = 5
# childAge = 7
childAge = 21
switch childAge
  when 5 then csOutput.insertAdjacentHTML('
    beforeend',
  'Go to kindergarten<br>')
  when 6, 7, 8, 9, 10 then csOutput.insertAdjacentHTML('beforeend', 'Go to Elementary School<br>')
  else csOutput.insertAdjacentHTML('beforeend', 'Go to where you belong<br>')
if age? #if age has a value, called the existential operator
  csOutput.insertAdjacentHTML('beforeend', "#{age}<br>")

chicken = null
chickenName = chicken ? "Fred"
csOutput.insertAdjacentHTML('beforeend', "Chicken Name: #{chickenName}<br>")

hat  = "Winter Hat"
coat = "Winter Coat"
gloves = null

if hat? and coat?
  csOutput.insertAdjacentHTML('beforeend', "#{hat} #{coat} #{gloves ? 'Winter Gloves'}<br>")

#Arrays
randArray = ["word", false, 1234, 1.234]
csOutput.insertAdjacentHTML('beforeend', "Index 2: #{randArray[2]}<br>")
csOutput.insertAdjacentHTML('beforeend', "Last 2 indexes: #{randArray[2..3]}<br>")
#create Arrays with ranges
oneTo10 = [1..10]
tenTo1 = [10..1]
combinedArray = oneTo10.concat tenTo1
oneTo10.push tenTo1... #elipses is a splat, indicates you want to soak up a list of argurments or all the values in the Array
for x in oneTo10
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
#displaying an array as a string:
csOutput.insertAdjacentHTML('beforeend', "#{oneTo10.toString()}<br>")
# evens and odds
evensOnly = oneTo10.filter (x) -> x % 2 == 0
csOutput.insertAdjacentHTML('beforeend', "here are all the evens: #{evensOnly.toString()}<br>")
csOutput.insertAdjacentHTML('beforeend', "The max number is: #{Math.max oneTo10...}<br>")
csOutput.insertAdjacentHTML('beforeend', "The min number is: #{Math.min oneTo10...}<br>")
#reducing an array
sumOfArr = oneTo10.reduce (x, y) -> x+y
csOutput.insertAdjacentHTML('beforeend', "The sum of the array: #{sumOfArr}<br>")
#reverse
csOutput.insertAdjacentHTML('beforeend', "Array Reversed: #{tenTo1.reverse()}<br>")
#accessing values in an array of objects
peopleArray = [
  {
    name: "Paul" #we don't have to use comma's if we don't want to
    age: 43
  },
  {
    name: "Sue"
    age: 39
  }
]
csOutput.insertAdjacentHTML('beforeend', "First Name of first person in object: #{peopleArray[0].name}<br>")

#looping through Arrays
oneTo10 = [1..10]
csOutput.insertAdjacentHTML('beforeend', "A basic loop from 1 to ten:<br>")
for x in oneTo10
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")

csOutput.insertAdjacentHTML('beforeend', "A basic loop through all the odds in 1 to ten:<br>")
for x in oneTo10 when x % 2 isnt 0 #notice isnt keyword
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
csOutput.insertAdjacentHTML('beforeend', "A basic loop of all the evens from 50 to 100:<br>")
for x in [50..100] when x%2 is 0
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
csOutput.insertAdjacentHTML('beforeend', "Counting by two's from 20 to 40:<br>")
for x in [20..40] by 2
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")

employees = [
  "Doug"
  "Sue"
  "Paul"
]
csOutput.insertAdjacentHTML('beforeend', "A list of employees and their index:<br>")
for employee, employeeIndex in employees
  csOutput.insertAdjacentHTML('beforeend', "Index: " + employeeIndex + " Employee: " + employee + "<br>")
#finding a value in an array
csOutput.insertAdjacentHTML('beforeend', "Finding values in an array:<br>")
if "Doug" in employees
  csOutput.insertAdjacentHTML('beforeend', "I found Doug!<br>")
#while loops
csOutput.insertAdjacentHTML('beforeend', "A basic while from 100 to 110:<br>")
i = 100
while (i += 1) <= 110
  csOutput.insertAdjacentHTML('beforeend', "i = #{i}<br>")
csOutput.insertAdjacentHTML('beforeend', "A basic while loop with a nursery rhyme:<br>")
monkeys = 10
while monkeys -= 1
  csOutput.insertAdjacentHTML('beforeend', "#{monkeys} little monkeys jumping on the bed.
  One fell off and broke his head.<br>")
#do while loop
x = 0
loop
  csOutput.insertAdjacentHTML('beforeend', "#{++x}<br>")
  break unless x != 5

# functions in coffescript, you have to put them at the top of the file or require them from another file.
csOutput.insertAdjacentHTML('beforeend', "FUNCTIONS<br>")
csOutput.insertAdjacentHTML('beforeend', "A basic hello function:<br>")
helloFunc = (name) ->
  # return "Hello, #{name}"
  "Hello, #{name}" #This funcitons works without a return statement

csOutput.insertAdjacentHTML('beforeend', "#{helloFunc("Derek")}<br>")

csOutput.insertAdjacentHTML('beforeend', "A basic radom number generator:<br>")

getRandNum = ->
  return Math.floor(Math.random() * 100) + 1

csOutput.insertAdjacentHTML('beforeend',
  "Random Number: #{getRandNum()}<br>")

sumNums = (vars...) -> #this receives an undetermined amount of numbers, so the function can be called on a varied amount of numbers later
  sum = 0
  for x in vars
    sum += x
  return sum #you need the return statment here though

csOutput.insertAdjacentHTML('beforeend', "Sum Function:#{sumNums(1,2,3,4,5)}<br>")

movieRank = (stars = 1) -> #puts in a default argument of 1 unless called with another argument
  if stars <= 2
    "Bad"
  else
    "Good"

csOutput.insertAdjacentHTML('beforeend', "Movie Ranking with no parameter: #{movieRank()}<br>")
csOutput.insertAdjacentHTML('beforeend', "Movie Ranking with custom parameter: #{movieRank(4)}<br>")

#recursive function
factorial = (x) ->
  return 0 if x < 0
  return 1 if x == 0 or x ==1
  return x * factorial(x-1)

csOutput.insertAdjacentHTML('beforeend', "Recursive Factorials:<br>")
csOutput.insertAdjacentHTML('beforeend', "Factorial of 4 is #{factorial(4)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Factorial of 5 is #{factorial(5)}<br>")

#objects
csOutput.insertAdjacentHTML('beforeend', "Working with OBJECTS<br>")

jefferson = {name: "Jefferson", age: 41, street: "123 Fake St"}
csOutput.insertAdjacentHTML('beforeend', "Accessing object.name: #{jefferson.name}<br>")
jefferson.state = "Delaware"
csOutput.insertAdjacentHTML('beforeend', "Creating a new object property through do notation:<br> jefferson.state = #{jefferson.state}<br>")
#cycling through the values in the object
for x, y of jefferson
  csOutput.insertAdjacentHTML('beforeend', x + " is " + y + "<br>")

#CLASSES
csOutput.insertAdjacentHTML('beforeend', "CLASSES!<br>")

class Animal
  name: "No Name"
  height: 0
  weight: 0
  sound: "No Sound"

  @numOfAnimals: 0 #putting this @ indicates it's a static method or value

  @getNumOfAnimals: () ->
    Animal.numOfAnimals

  constructor: (name = "No Name", @height = 0, @weight = 0) -> #no name is the default value unless specified otherwise
    @name = name #@ takes the place of "this" keyword

    Animal.numOfAnimals++ #this is how to increment a value of a static class

  makeSound: ->
      "says #{@sound}"
  getInfo: ->
      "#{@name} is #{@height} cm tall and weighs #{@weight} kg and #{@makeSound()}"

grover = new Animal()

grover.name = "Grover"
grover.height = "60"
grover.weight = "35"
grover.sound = "Woof"

csOutput.insertAdjacentHTML('beforeend', "#{grover.getInfo()}<br>")

#attach new object methods outside of the class
Animal::isItBig = ->
  if @height >= 45
    "Yes"
  else
    "No"

csOutput.insertAdjacentHTML('beforeend', "Is grover big? #{grover.isItBig()}<br>")
csOutput.insertAdjacentHTML('beforeend', "How many animals do we have? We have #{Animal.getNumOfAnimals()}<br>")

# INHERITANCE
class Dog extends Animal
  sound2: "No Sound"
  constructor: (name= "No Name", height = 0, weight = 0)->
    super(name, height, weight) #passes the values of the existing class
  makeSound: -> #you could override the super class method by re-writing it
    super + " and #{@sound2}"

sparky = new Dog("Sparky", 35, 46)
sparky.sound = "Woooooof"
sparky.sound2 = "yip yip"

csOutput.insertAdjacentHTML('beforeend', "#{sparky.getInfo()}")



###
adfadf

dfa
dfads
f
adf
ad
fa
f
adf
###
