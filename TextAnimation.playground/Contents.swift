//: A UIKit based Playground for presenting user interface
  
import UIKit
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.gray
sceneView.autoenablesDefaultLighting = true
sceneView.allowsCameraControl = true

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = sceneView

let textNode = SCNNode()
let text = SCNText(string: "Hello World", extrusionDepth: 1)
text.font = UIFont(name: "Menlo", size: 12)
textNode.geometry = text
textNode.geometry?.firstMaterial?.diffuse.contents = UIColor.green
textNode.geometry?.firstMaterial?.specular.contents = UIColor.white
scene.rootNode.addChildNode(textNode)

//let action = SCNAction.rotate(by: 2 * .pi, around: SCNVector3(0, 0, 1), duration: 8)
//let repeatAction = SCNAction.repeatForever(action)
//textNode.runAction(repeatAction)

let animation = CABasicAnimation(keyPath: "geometry.extrusionDepth")
animation.fromValue = 1.0
animation.toValue = 50.0
animation.duration = 1.0
animation.autoreverses = true
animation.repeatCount = .infinity
textNode.addAnimation(animation, forKey: "extrude")
