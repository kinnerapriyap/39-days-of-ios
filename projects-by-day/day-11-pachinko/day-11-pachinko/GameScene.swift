//
//  GameScene.swift
//  day-11-pachinko
//
//  Created by kinnerapriyap on 2019/12/03.
//  Copyright © 2019 kinnerapriyap. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background.jpg")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let box = SKSpriteNode(color: UIColor.red, size: CGSize(width: 64, height: 64))
            box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
            box.position = location
            addChild(box)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        }
    }
}
