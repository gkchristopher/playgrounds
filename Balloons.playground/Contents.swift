// Requires Xcode 6 (beta 4) running on Yosemite (developer preview 4) or later.
import SpriteKit
import XCPlayground
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
						This playground includes sample code to explore SpriteKit. The scene, derived from what was shown on stage at WWDC 2014, contains two cannons that each fire balloons at random intervals. When the balloons collide, they pop and disappear. In this playground, you’ll learn just how easy it is to create an engaging scene with custom motions and effects.
					</p>
					<p class="para">
						As you change the code, you’ll see the effects live in the playground and you can have fun by changing and breaking things.
					</p>
				    <div class="note">
				      <aside class="aside">
    					<p class="aside-title">Note
					    </p>
				    	<p class="para">If you don’t see the Balloon scene, open the timeline editor by choosing  View > Assistant Editor > Show Assistant Editor (or press Option-Command-Return).
				    	</p>
					  </aside>
					</div>
					<p class="para">
						Let's get started!
					</p>
					<h3 class="section-name" tabindex="0">Presenting the Scene in the Timeline</h3>
					<p class="para">
                        SpriteKit content is presented in an <code class="code-voice">SKView</code> object. The view runs simulations and renders the content. All content is represented in an <code class="code-voice">SKScene</code> object, which is the root node for all nodes in a tree of <code class="code-voice">SKNode</code> objects. In this scene, you’ll add nodes and create your game’s content.
					</p>
                    <p class="para">
                        The scene was loaded from a SpriteKit scene file, which we created in Xcode’s SpriteKit Level Designer. All resources, including scenes and image assets, have been embedded in the playground bundle and are available for us to use. You can add your own images in the bundle, too. Just right-click on the Balloons.playground file in the Finder and choose Show Package Contents.
                    </p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 850, height: 638))
let scene = SKScene(fileNamed: "GameScene")
scene.scaleMode = .AspectFill
sceneView.presentScene(scene)

XCPShowView("Balloons", sceneView)
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
                        <p class="para">Because gravity is defined by the scene’s physics world (its <code class="code-voice">physicsWorld</code> property), in the the world of SpriteKit laws of physics can be altered! 
                        </p>
                        <p class="para">Turn the gravity upside down by changing the <code class="code-voice">scene.physicsWorld.gravity</code> vector. Hint: Invert the sign of the vector's <code class="code-voice">dy</code> component.
                        </p>
                      </aside>
                    </div>
					<p class="para">To actually see the content of a scene in a playground, we use the XCPlayground function <code class="code-voice">XCPShowView</code>. This function renders the view live in the timeline editor so that the game is visible. From this point on, every change you make will be rendered live and be visible in the timeline editor.</p>

                    <h3 class="section-name" tabindex="0">Firing the Cannons</h3>
                    <p class="para">
                        When the cannons fire, let’s add a balloon and move it across the scene. The balloons are sprite nodes, and we'll give each balloon a texture with a random element from our collection of balloon images. 
                    </p>
                    <p class="para">
                        Here, we use the <code class="code-voice">map</code> function of Swift arrays to create an array of <code class="code-voice">SKTexture</code> objects from an array of image names. With our array of textures, we can simply generate a random index within its range and then create a sprite node with the texture at that index.
                    </p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
let images = [
    "blue", "heart-blue", "star-blue",
    "green", "star-green", "heart-pink",
    "heart-red", "orange", "red",
    "star-gold", "star-pink", "star-red",
    "yellow"
]
let textures: [SKTexture] = images.map { SKTexture(imageNamed: "balloon-\($0)") }

var configureBalloonPhysics: ((balloon: SKSpriteNode) -> Void)?
func createRandomBalloon() -> SKSpriteNode {
    let choice = Int(arc4random_uniform(UInt32(textures.count)))
    var balloon = SKSpriteNode(texture: textures[choice])
    configureBalloonPhysics?(balloon: balloon)
    
    return balloon
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
                    <div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
                        <p class="para">You can add elements to the timeline by clicking the circle to the right of a line of code. This allows you to inspect the elements further.</p>
                        <p class="para">
	                       Add the array of textures to the timeline. You may need to scroll down in the timeline to see it.
                        </p>
                      </aside>
                    </div>
					<p class="para">Now that we’ve created the balloon, let’s make sure it can be moved across the screen. We do this by giving it a physics body. When simulating physics, nodes without physics bodies are not considered.</p>
                    <p class="para">In SpriteKit, a physics body can be assigned up to 32 different categories. You use categories to separate nodes from each other. Note that we assign the balloon category to the contact test bit mask. This causes collisions between two nodes to trigger a notification.</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
let BalloonCategory: UInt32 = 1 << 1
configureBalloonPhysics = { balloon in
    balloon.physicsBody = SKPhysicsBody(texture: balloon.texture, size: balloon.size)
    balloon.physicsBody!.linearDamping = 0.5
    balloon.physicsBody!.mass = 0.1
    balloon.physicsBody!.categoryBitMask = BalloonCategory
    balloon.physicsBody!.contactTestBitMask = BalloonCategory
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
                    <div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
                        <p class="para">Remove the line that assigns the <code class="code-voice">BalloonCategory</code> to the <code class="code-voice">contactTestBitMask</code>. What happens?
                        </p>
                      </aside>
                    </div>
					<p class="para">Modifying physics body properties is a great way to experiment, because of the immediate visual feedback that live rendering in playgrounds provides. Plus, you can inspect and debug your scenes on the spot.</p>
                    <div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
                        <p class="para">Try to significantly increase or decrease the <code class="code-voice">mass</code> and <code class="code-voice">linearDamping</code> properties of the physics body. How does that affect the balloons? Change other physics body properties, too.
                        </p>
                      </aside>
                    </div>
                    <p class="para">We still need to position the balloon and add it to the scene. We want balloons to be fired from the mouth of the cannons.</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
let displayBalloon: (SKSpriteNode, SKNode) -> Void = { balloon, cannon in
    balloon.position = cannon.childNodeWithName("mouth")!.convertPoint(CGPointZero, toNode: scene)
    scene.addChild(balloon)
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
					<p class="para">Notice that we determined the position of the balloon by asking for at child node named <code class="code-voice">mouth</code>. That’s possible because we explicitly added a node named <code class="code-voice">mouth</code> as a child of each cannon to define where the balloon should appear. This approach freed us from having to calculate the position, and if we wanted to reposition where the balloons first appear, we could do that directly in Xcode, without changing the code.</p>
                    <p class="para">To actually fire the balloon, we apply an impulse to its physics body to move it across the scene. An impulse is an instantaneous change to the body’s velocity. By applying an impulse to a body, SpriteKit pushes it in the direction specified (by an impulse vector). We’ve based the direction on the rotation of the firing cannon.</p>
                    <p class="para">Finally, we wrap creation, displaying, and firing of a balloon in a single function that we can call later.</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
let fireBalloon: (SKSpriteNode, SKNode) -> Void = { balloon, cannon in
    let impulseMagnitude: CGFloat = 70.0
    
    let xComponent = cos(cannon.zRotation) * impulseMagnitude
    let yComponent = sin(cannon.zRotation) * impulseMagnitude
    let impulseVector = CGVector(dx: xComponent, dy: yComponent)
    
    balloon.physicsBody!.applyImpulse(impulseVector)
}

func fireCannon(cannon: SKNode) {
    let balloon = createRandomBalloon()
    
    displayBalloon(balloon, cannon)
    fireBalloon(balloon, cannon)
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
					<p class="para">To offer easy access to the cannon nodes, we named these nodes explicitly in Xcode’s Level Designer. As a result, we don’t need special knowledge of the tree’s organization or of the cannon nodes’ location. The cannons could even be repositioned without requiring any code changes.</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
let leftBalloonCannon = scene.childNodeWithName("//left_cannon")!
let rightBalloonCannon = scene.childNodeWithName("//right_cannon")!
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
                        SpriteKit executes <code class="code-voice">SKAction</code> objects on nodes to change their position, rotation, scale—or in our case to wait (that is, do nothing for a specified amount of time). You can execute an action standalone, in a sequence, or in a group, and you can automatically repeat it an arbitrary number of times (or forever). But actions do not necessarily change a node’s properties—an action can simply be a block of code to be executed.
                    </p>
                </section>
            </article>
        </div>
    </body>
</html>
*/
let wait = SKAction.waitForDuration(1.0, withRange: 0.05)
let pause = SKAction.waitForDuration(0.55, withRange: 0.05)

let left = SKAction.runBlock { fireCannon(leftBalloonCannon) }
let right = SKAction.runBlock { fireCannon(rightBalloonCannon) }

let leftFire = SKAction.sequence([wait, left, pause, left, pause, left, wait])
let rightFire = SKAction.sequence([pause, right, pause, right, pause, right, wait])
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
					<p class="para">To fire the cannons, we’ve created a sequence of actions that alternates between waiting and firing. We embed the fire/wait sequence in another action, one that is repeated forever.</p>
                    <div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
                        <p class="para">Increase the cannons’ fire interval, change the power with which the cannons fire, and then make the cannons fire without pauses.
                        </p>
                      </aside>
                    </div>
                    <p class="para">To execute an action on a node, we simply call its <code class="code-voice">runAction</code> function and pass it the action of interest. Multiple actions can be executed simultaneously by a node, making it easy to implement complex, custom behavior in SpriteKit.</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
leftBalloonCannon.runAction(SKAction.repeatActionForever(leftFire))
rightBalloonCannon.runAction(SKAction.repeatActionForever(rightFire))
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
                        <p class="para">The <code class="code-voice">rotateByAngle</code> class function of <code class="code-voice">SKAction</code> gives you an action that rotates the executing node by a number of degrees (in radians). 
						</p>
						<p class="para">
						Create and run actions that make the cannons rotate while they are shooting.
                        </p>
                      </aside>
                    </div>

                    
                    <h3 class="section-name" tabindex="0">Popping Balloons</h3>
                    <p class="para">
                        When two balloons collide, we want to make one of them explode. The explosion effect can be created with actions, so this time we’ve used actions to create an animation from textures and to remove the executing node from the scene. These two actions are combined into one sequence action that runs the two actions one after the other.
                    </p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
let balloonPop = (1...4).map {
    SKTexture(imageNamed: "explode_0\($0)")
}

let removeBalloonAction: SKAction = SKAction.sequence([
    SKAction.animateWithTextures(balloonPop, timePerFrame: 1 / 30.0),
    SKAction.removeFromParent()
    ])
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
					<p class="para">Even though collisions between physics bodies in a scene are automatically handled by SpriteKit, we must provide any logic that’s specific to our game. This includes defining which collisions should trigger contact notifications (contact testing). Earlier we ensured that all balloons are of the balloon category, but the ground is also a node and the category of a node defaults to all categories (<code class="code-voice">0xFFFFFFFF</code>).</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
let GroundCategory: UInt32 = 1 << 2
let ground = scene.childNodeWithName("//ground")!
ground.physicsBody!.categoryBitMask = GroundCategory
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
                        <p class="para">Don’t assign the ground node a category (do this by commenting out the above three lines of code). What happens when balloons hit the ground now?
                        </p>
                      </aside>
                    </div>
					<p class="para">Contact notifications are handled by the physics world’s contact delegate. This is a class that conforms to the <code class="code-voice">SKPhysicsContactDelegate</code> protocol. Whenever collisions occur, the physics world notifies its contact delegate (an instance of a class conforming to the <code class="code-voice">SKPhysicsContactDelegate</code> protocol), so that we can react appropriately to the collision.</p>
				</section>
			</article>
		</div>
    </body>
</html>
*/
class PhysicsContactDelegate: NSObject, SKPhysicsContactDelegate {
    func didBeginContact(contact: SKPhysicsContact) {
        let categoryA = contact.bodyA.categoryBitMask
        let categoryB = contact.bodyB.categoryBitMask
        
        if (categoryA & BalloonCategory != 0) && (categoryB & BalloonCategory != 0) {
            contact.bodyA.node!.runAction(removeBalloonAction)
        }
    }
}

let contactDelegate = PhysicsContactDelegate()
scene.physicsWorld.contactDelegate = contactDelegate
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
				  		In the contact delegate’s <code class="code-voice">didBeginContact</code> function, we make use of the physics bodies’ category bit masks to ensure that only collisions between balloon nodes trigger explosions (that is, nodes of the <code class="code-voice">BalloonCategory</code>.). We use the bitwise AND operator to determine whether both bodies are of <code class="code-voice">BalloonCategory</code>, and run the action only if they are.
					</p>
					<div class="note">
                      <aside class="aside">
                        <p class="aside-title">Experiment
                        </p>
                        <p class="para">Enable collisions between cannons and balloons.
                        </p>
                        <p class="para">Hint: The cannon nodes don’t have a physics body.
                        </p>
                      </aside>
                    </div>
					
					<h3 class="section-name" tabindex="0">And finally...</h3>
					<p class="para">
						Playgrounds provide you with a way to experiment with your code that is interactive and fun. Playgrounds are also rewarding, because you learn by doing and by making mistakes in a controlled environment. More important, they challenge your curiosity and encourage you to play with and test your code while writing it.
					</p>
					<p class="para">
						Have fun! Change the code, experiment, and don’t be afraid to start over.
					</p>
				</section>
			</article>
		</div>
    </body>
</html>

*/
