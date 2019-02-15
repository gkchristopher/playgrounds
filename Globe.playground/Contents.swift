import UIKit
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.black
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView

let node = SCNNode()
node.geometry = SCNSphere(radius: 1)
node.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "earth-diffuse.jpg")
node.geometry?.firstMaterial?.specular.contents = UIImage(named: "specular.png")
node.geometry?.firstMaterial?.emission.contents = UIImage(named: "emission.png")
node.geometry?.firstMaterial?.normal.contents = UIImage(named: "normal.png")
scene.rootNode.addChildNode(node)

let action = SCNAction.rotate(by: 2 * .pi, around: SCNVector3(0, 1, 0), duration: 8)
let repeatAction = SCNAction.repeatForever(action)
node.runAction(repeatAction)
