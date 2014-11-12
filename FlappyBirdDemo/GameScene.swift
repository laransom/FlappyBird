//
//  GameScene.swift
//  FlappyBirdDemo
//
//  Created by Lee Ransom on 11/11/14.
//  Copyright (c) 2014 Lee Ransom. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var bird = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        //Physics
        self.physicsWorld.gravity = CGVectorMake(0.0, -5.0)
        
        //Bird
        var BirdTexture = SKTexture(imageNamed: "pterodactyl12")
        BirdTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        bird = SKSpriteNode(texture: BirdTexture)
        bird.setScale(0.5)
        bird.position = CGPoint(x: self.frame.size.width * 0.35, y: self.frame.size.height * 0.6)
        
        bird.physicsBody = SKPhysicsBody(circleOfRadius: bird.size.height / 2)
        bird.physicsBody?.dynamic = true
        bird.physicsBody?.allowsRotation = false
        
        self.addChild(bird)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
