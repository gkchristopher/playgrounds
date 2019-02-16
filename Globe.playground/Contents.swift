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
node.geometry = SCNPlane(width: 300, height: 300)
node.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "brickwall.jpg")
node.geometry?.firstMaterial?.normal.contents = UIImage(named: "brickwall_normal.jpg")
//node.geometry?.firstMaterial?.specular.contents = UIImage(named: "specular.png")
//node.geometry?.firstMaterial?.emission.contents = UIImage(named: "emission.png")
//node.geometry?.firstMaterial?.multiply.contents = UIColor.blue
node.geometry?.firstMaterial?.isDoubleSided = true
scene.rootNode.addChildNode(node)

let action = SCNAction.rotate(by: 2 * .pi, around: SCNVector3(0, 1, 0), duration: 20)
let repeatAction = SCNAction.repeatForever(action)
node.runAction(repeatAction)
