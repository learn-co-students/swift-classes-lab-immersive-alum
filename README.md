# Classes Lab

![Drawing](http://i.imgur.com/itrJlyZ.jpg?1)  

> Self-education is, I firmly believe, the only kind of education there is. -[Isaac Asimov](https://en.wikipedia.org/wiki/Isaac_Asimov)
 




# Thermometer


Open the `Thermometer.xcodeproj` file. Navigate to the `Thermometer.swift` file, this is where you will be writing your code.

**1.** Define a class called `Thermometer`. This class should have one stored property called `fahrenheit` of type `Double`. This should be a variable because its value will change. You should also create an `init` function that takes in one argument labeled `fahrenheit` of type `Double`. In your implementation of this `init` function, you should assign the `fahrenheit` value passed in as an argument to the `fahrenheit` stored property we created above. Note that you will have to use _self_ to distinguish between the name of the stored property and the argument.

**2.** Navigate to the `House.swift` file. We're going to create another class. This class should be called `House`. This class should have one stored property called `thermometer` of type `Thermometer`. It should be a constant declared with the `let` keyword. This stored property should have a default value. Its default value is an instance of `Thermometer` (when calling on `Thermometer`s init function in creating your default value, you will have to pass in a value representing the `fahrenheit` temperature, you can pass in any value here that you want. I went with 75.0).

**3.** Navigate back to the `Thermometer.swift` file. Create a computed property called `celsius` of type `Double`. This computed property should return back the Celsius temperature. It should take advantage of the fact that we have a Fahrenheit temperature we can use.

In order to go from Fahrenheit to Celsius you will have to subtract 32 and then multiply that value by 5/9. 100°F equals 37.77°C. Why? Because (100 - 32)  * 5/9 evaluates to 37.77.

**4.** We're not done with the `celsius` computed property. Update this computed where it has both a setter and a getter. The getter should include what you've already created. It should just return back the Celsius temperature by subtracting 32 from `fahrenheit` and multiplying by 5/9. The setter (which will get called when someone assigns a value to the celsius property) should update the `fahrenheit` property. In the setter, you should change the `fahrenheit` property to equal the following. It should equal the Celsius temperature (which is represented by `newValue`) multiplied by 9/5 + 32. That is how you go from Celsius to Fahrenheit.

**5.** Navigate back to the `House.swift` file. Create a function, `grandmaIsOver()`. It should take in no arguments and return no values. In the implementation of this function, you should update the fahrenheit property on our thermometer property to equal 90.0. Why? Because anytime Grandma is over, we know that the heat is going up to 100 degrees and we're about to feel like we're in a sauna. 

Thanks Grandma.

![](http://i.imgur.com/eq1zh2Q.jpg)

**6.** Navigate back to the `Thermometer.swift` file. Create a computed property called `description` of type `String`. It should return back the following `String` value:

```
Fahrenheit: 90.0  
Celsius: 32.22
 ```
 
This is of course assuming that the current `fahrenheit` property is equal to 90.0 You shouldn't hardcode these figures. 90.0 and 32.22 should instead represent what the current values of `fahrenheit` and `celsius` are using String interpolation.

<a href='https://learn.co/lessons/Classes-Lab' data-visibility='hidden'>View this lesson on Learn.co</a>
