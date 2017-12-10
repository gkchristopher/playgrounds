/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
					<p class="para">
						This playground introduces the concept of <em>pattern matching</em>. A pattern is a way to describe and match a set of values based on certain rules, such as &ldquo;all tuples whose first value is <code class="code-voice">0</code>,&rdquo; &ldquo;all numbers in the range <code class="code-voice">1...5</code>,&rdquo; or &ldquo;all class instances of a certain type.&rdquo; Patterns in Swift enable you to write conditional statements (such as <code class="code-voice">switch</code> statements) that match multiple values in a concise and readable way.
					</p>
					<div class="note">
				      <aside class="aside">
    					<p class="aside-title">Note
					    </p>
				    	<p class="para">If you don&rsquo;t see the Console Output viewer, open the timeline editor by choosing  View > Assistant Editor > Show Assistant Editor (or press Option-Command-Return).
				    	</p>
					  </aside>
					</div>
					<h3 class="section-name" tabindex="0">Matching Values in a Tuple</h3>
					<p class="para">
						Here&rsquo;s an example of how pattern matching can help you write simple, elegant switch statements. This example is based on the game FizzBuzz. In this game, you count upwards from 1. If you reach a number that divides by 3, you say &ldquo;Fizz!&rdquo; instead of the number. If you reach a number that divides by 5, you say &ldquo;Buzz!&rdquo; instead of the number. If the number divides by 3 <em>and</em> 5, you say &ldquo;FizzBuzz!.&rdquo; So, starting from 1, you say &ldquo;1, 2, Fizz!, 4, Buzz!,&rdquo; and so on. Here, the game is expressed as a function called <code class="code-voice">fizzBuzz</code> that takes a number and returns an appropriate <code class="code-voice">String</code> value for that number
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
func fizzBuzz(number: Int) -> String {
    switch (number % 3, number % 5) {
    case (0, 0):
        // number divides by both 3 and 5
        return "FizzBuzz!"
    case (0, _):
        // number divides by 3
        return "Fizz!"
    case (_, 0):
        // number divides by 5
        return "Buzz!"
    case (_, _):
        // number does not divide by either 3 or 5
        return "\(number)"
    }
}
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					The <code class="code-voice">for</code> loop below calls the fizzBuzz function for the numbers 1 through 100. Take a look at the Console Output in the Assistant Editor on the right to see the loop&rsquo;s printed output for each value.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
for i in 1...100 {
    print(fizzBuzz(i))
}
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					The <code class="code-voice">switch</code> statement in the <code class="code-voice">fizzBuzz</code> function switches on a tuple containing two expressions&mdash;<code class="code-voice">number % 3</code> (or &ldquo;the remainder after dividing <code class="code-voice">number</code> by three&rdquo;) and <code class="code-voice">number % 5</code> (&ldquo;the remainder after dividing <code class="code-voice">number</code> by 5&rdquo;). Each case of the <code class="code-voice">switch</code> statement compares a pattern against the output of this two-value tuple, and checks for a match.
    				</p>
					<p class="para">
						For the number <code class="code-voice">15</code>, the result of <code class="code-voice">(number % 3, number % 5)</code> is <code class="code-voice">(0, 0)</code>&mdash;that is, the number divides exactly by both <code class="code-voice">3</code> and <code class="code-voice">5</code>. This matches the first <code class="code-voice">switch</code> case and returns <code class="code-voice">&quot;FizzBuzz!&quot;</code>
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
fizzBuzz(15)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					For the number <code class="code-voice">6</code>, the result is <code class="code-voice">(0, 1)</code>. This example matches the second <code class="code-voice">switch</code> case, <code class="code-voice">(0, _)</code>, because the underscore (<code class="code-voice">_</code>) is a wildcard pattern that matches <em>any</em> value. This returns <code class="code-voice">&quot;Fizz!&quot;</code>.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
fizzBuzz(6)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					For the number <code class="code-voice">11</code>, the result is <code class="code-voice">(2, 1)</code>. This example matches the fourth <code class="code-voice">switch</code> case, <code class="code-voice">(_, _)</code>, in which the underscore is used as a wildcard match for <em>both</em> values in the tuple. This returns <code class="code-voice">&quot;11&quot;</code>.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
fizzBuzz(11)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
					<div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
						<p class="para">
							Call the <code class="code-voice">fizzBuzz</code> function with some more numbers to see how it reports different messages.
						</p>
						<p class="para">
							Add extra patterns for a third special value of <code class="code-voice">Bang!</code>. Have <code class="code-voice">Bang!</code> follow the same rules as <code class="code-voice">Fizz!</code> and <code class="code-voice">Buzz!</code>, but for a divisor of <code class="code-voice">7</code>. Don&rsquo;t forget to write a case for <code class="code-voice">FizzBuzzBang!</code>.
						</p>
						<p class="para">
							What happens if you write a <code class="code-voice">default</code> case instead of <code class="code-voice">case (_, _)</code>? Do both approaches successfully match all remaining possible tuple values?
						</p>
                      </aside>
                    </div>
                    <h3 class="section-name" tabindex="0">Enumerations and Associated Values</h3>
					<p class="para">
						Patterns can be used with enumerations and their associated values to match specific enumeration cases. The next example shows an enumeration that represents a train&rsquo;s live status.
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
enum Status {
    case OnTime
    case Delayed(minutes: Int)
}
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					When a train is running on time, its status is <code class="code-voice">Status.OnTime</code>, which does not store an associated value. When a train is delayed, however, its status is <code class="code-voice">Status.Delayed(Int)</code>, which stores an associated integer value to represent how many minutes late the train is running.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
let goodNews = Status.OnTime
let badNews = Status.Delayed(minutes: 90)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					A new <code class="code-voice">Train</code> instance is assumed to be on time by default.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
class Train {
    var status = Status.OnTime
}
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					You can use pattern matching to match and extract the values associated with an enumeration case such as <code class="code-voice">Status.Delayed(Int)</code>. The extension below extends the <code class="code-voice">Train</code> class to conform to Swift&rsquo;s <code class="code-voice">Printable</code> protocol, which requires a conforming type to provide a readable string <code class="code-voice">description</code> property. This extension makes it easy to retrieve a <code class="code-voice">String</code> value that includes the number of minutes that the train is delayed.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
extension Train: Printable {
    
    var description: String {

        switch status {

        case .OnTime:
            // match against the OnTime enumeration case pattern
            return "On time"

        case .Delayed(let minutes) where 0...5 ~= minutes:
            // match against a pattern expression representing a range of values,
            // and use the "~=" operator to mean "where 'range' contains 'value'"
            return "Slight delay of \(minutes) min"

        case .Delayed(_):
            // match against all remaining Delayed enumeration cases,
            // using a wildcard pattern to match any number of minutes
            return "Delayed"

        }

    }
    
}
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					The first <code class="code-voice">switch</code> case matches when the train&rsquo;s status is <code class="code-voice">OnTime</code>, and returns a simple string message.
    				</p>
					<p class="para">
						The second <code class="code-voice">switch</code> case is more complex. It starts by using the combined pattern <code class="code-voice">let .Delayed(minutes)</code> to match a <code class="code-voice">Status</code> enumeration case of <code class="code-voice">Delayed</code> and bind its associated integer value to a temporary constant called <code class="code-voice">minutes</code>. This pattern enables you to use the <code class="code-voice">minutes</code> constant inside the <code class="code-voice">switch</code> case&rsquo;s code block to access the associated number of minutes if the pattern is matched.
					</p>
					<p class="para">
						This <code class="code-voice">switch</code> case also adds a <em>guard expression</em> (indicated by the <code class="code-voice">where</code> keyword), which restricts the situations in which the case will be matched. Here, the guard expression matches only when the extracted value of <code class="code-voice">minutes</code> is in the range <code class="code-voice">0...5</code>. This restriction is enforced with the pattern-match (<code class="code-voice">~=</code>) operator.
					</p>
					<p class="para">
						The third and final <code class="code-voice">switch</code> case matches all remaining <code class="code-voice">Delayed</code> cases.
					</p>
					<p class="para">
						You can now create a few <code class="code-voice">Train</code> instances and set some of them to be delayed.
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
let trainOne = Train()
let trainTwo = Train()
let trainThree = Train()

trainTwo.status = .Delayed(minutes: 2)
trainThree.status = .Delayed(minutes: 8)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					Take a look at the output of the <code class="code-voice">description</code> property in the sidebar for each <code class="code-voice">Train</code> instance to see how its value changes based on the train&rsquo;s <code class="code-voice">status</code> and associated value.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
trainOne.description
trainTwo.description
trainThree.description
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
					<div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
						<p class="para">
							Change the <code class="code-voice">status</code> properties for <code class="code-voice">trainTwo</code> and <code class="code-voice">trainThree</code> above to see how their descriptions change when the delay time is modified.
						</p>
						<p class="para">
							Change the extension&rsquo;s final <code class="code-voice">switch</code> case to bind any number of minutes as a <code class="code-voice">minutes</code> constant. Use this constant&rsquo;s value as a part of a <code class="code-voice">description</code> property that says (for example) <code class="code-voice">&quot;Delayed by 17 min&quot;</code>.
						</p>
						<p class="para">
							For bonus points, add an extra <code class="code-voice">switch</code> case to match a delay of greater than or equal to 60 minutes, and print a longer message about the number of hours and minutes the train will be delayed.
						</p>
						<p class="para">
							<strong>Tip:</strong> you can use operators such as <code class="code-voice">&gt;=</code> in a guard expression.
						</p>
                      </aside>
                    </div>
					<h3 class="section-name" tabindex="0">Checking and Casting to Subclass Types</h3>
					<p class="para">
						Patterns also enable you to match against the dynamic type of a class instance. Consider the following class hierarchy:
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
extension Train {
    func cleanPassengerCars() -> String {
        return "Clean the passenger cars"
    }
}

class MaglevTrain: Train {
    func referToSpecialist() -> String {
        return "Refer the maglev to a specialist"
    }
}

let maglev = MaglevTrain()
let train = Train()
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					The simplest type-matching pattern, <code class="code-voice">is</code>, compares an object against a type and matches when the object is an instance of that type.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
func trainDescription(train: Train) -> String {
    switch train {
    case is MaglevTrain:
        return "The fastest train on earth."
    default:
        return "Some other kind of train."
    }
}
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
    				<p class="para">
    					You can call the <code class="code-voice">trainDescription</code> function to see the description of the train objects created earlier.
    				</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
trainDescription(maglev)
trainDescription(train)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
					<div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
						<p class="para">
							Add a <code class="code-voice">switch</code> case to the <code class="code-voice">trainDescription</code> function that uses the <code class="code-voice">is</code> pattern to check for a type of <code class="code-voice">Train</code> rather than <code class="code-voice">MaglevTrain</code>. What error do you get? Why?
						</p>
						<p class="para">
							Define a second subclass of <code class="code-voice">Train</code> called <code class="code-voice">SteamTrain</code> and add a case to the <code class="code-voice">trainDescription</code> function to match <code class="code-voice">SteamTrain</code> and return an appropriate description. Call the <code class="code-voice">trainDescription</code> function for a <code class="code-voice">SteamTrain</code> instance to check that your new description is reported correctly.
						</p>
                      </aside>
                    </div>
					<p class="para">
						The <code class="code-voice">is</code> pattern only checks whether an object has a specific subclass type. If you want to check <em>and</em> use the object as a subclass type, use the <code class="code-voice">as</code> pattern (which is similar to the <code class="code-voice">as</code> type-casting operator) in a <code class="code-voice">switch</code> statement to check and cast an object simultaneously. Combine the <code class="code-voice">as</code> pattern with the <code class="code-voice">let</code> pattern to bind the cast object to a temporary constant of the more specific type.
					</p>
					<p class="para">
						Here&rsquo;s a function called <code class="code-voice">determineMaintenanceRequirements</code>, which uses the <code class="code-voice">as</code> pattern in a <code class="code-voice">switch</code> statement to check and cast a <code class="code-voice">Train</code> instance as a <code class="code-voice">MaglevTrain</code> instance if it is of the appropriate subclass type. If the cast succeeds, the <code class="code-voice">let</code> pattern provides access to the cast instance as a <code class="code-voice">MaglevTrain</code> instance so that a subclass-specific method can be called. Otherwise, a default case calls the <code class="code-voice">cleanPassengerCars</code> method, which can be called on any <code class="code-voice">Train</code> instance.
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
func determineMaintenanceRequirements(train: Train) -> String {
    switch train {
    case let maglev as MaglevTrain:
        return maglev.referToSpecialist()
    default:
        return train.cleanPassengerCars()
    }
}

determineMaintenanceRequirements(train)
determineMaintenanceRequirements(maglev)
/*: Convert this content to Playground Markup
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>TITLE</title>
        <link rel="stylesheet" type="text/css" href="style-1.1.15.css" />
        <meta charset='utf-8'> 
        <meta id="xcode-display" name="xcode-display" content="render" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name = "viewport" content = "width = device-width, maximum-scale=1.0">
    </head>
    <body id="conceptual_flow_with_tasks" class="jazz">
		<div class="content-wrapper">
			<article class="chapter>">
				<section class="section">
					<div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
						<p class="para">
							Add a <code class="code-voice">cleanFirebox</code> method to your new <code class="code-voice">SteamTrain</code> class, and expand the <code class="code-voice">switch</code> statement in <code class="code-voice">determineMaintenanceRequirements</code> to match and call the <code class="code-voice">cleanFirebox</code> method when it matches a <code class="code-voice">SteamTrain</code> instance. Call the <code class="code-voice">determineMaintenanceRequirements</code> function for a <code class="code-voice">SteamTrain</code> instance to check that the <code class="code-voice">cleanFirebox</code> method is called correctly.
						</p>
						<p class="para">
							For bonus points, add the <code class="code-voice">cleanFirebox</code> method with an extension rather than editing the original <code class="code-voice">SteamTrain</code> class definition.
						</p>
                      </aside>
                    </div>
                    <p class="para">
                        Have fun! Change the code, experiment, and don’t be afraid to start over.
                    </p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
