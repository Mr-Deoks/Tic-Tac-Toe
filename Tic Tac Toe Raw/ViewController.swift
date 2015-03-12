//
//  ViewController.swift
//  Tic Tac Toe Raw
//
//  Created by Denis Aganin on 12.03.15.
//  Copyright (c) 2015 Denis Aganin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topRightImage: UIImageView!
    @IBOutlet weak var topMidImage: UIImageView!
    @IBOutlet weak var topLeftImage: UIImageView!
    @IBOutlet weak var midRightImage: UIImageView!
    @IBOutlet weak var midMidImage: UIImageView!
    @IBOutlet weak var midLeftImage: UIImageView!
    @IBOutlet weak var bottomRightImage: UIImageView!
    @IBOutlet weak var bottomMidImage: UIImageView!
    @IBOutlet weak var bottomLeftImage: UIImageView!
    
    var topHoriz: [GameElement] = []
    var midHoriz: [GameElement] = []
    var bottomHoriz: [GameElement] = []
    var rightVert: [GameElement] = []
    var midVert: [GameElement] = []
    var leftVert: [GameElement] = []
    var rightDiag: [GameElement] = []
    var leftDiag: [GameElement] = []

    var gameElements: [GameElement] = []
    
//    var timer = NSTimer()
//    var counter = 0
    
    var playersTurn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        defineElements()
    }

    // Buttons
    
    @IBAction func topRightButton(sender: AnyObject) {
        
        if topRightImage.image == nil && playersTurn == true {
            topRightImage.image = gameElements[0].image
            playersTurn = false
            topHoriz.append(gameElements[0])
            rightVert.append(gameElements[0])
            rightDiag.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func topMidButton(sender: AnyObject) {
        
        if topMidImage.image == nil && playersTurn == true {
            topMidImage.image = gameElements[0].image
            playersTurn = false
            topHoriz.append(gameElements[0])
            midVert.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func topLeftButton(sender: AnyObject) {
        
        if topLeftImage.image == nil && playersTurn == true {
            topLeftImage.image = gameElements[0].image
            playersTurn = false
            topHoriz.append(gameElements[0])
            leftVert.append(gameElements[0])
            leftDiag.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }

    @IBAction func midRightButton(sender: AnyObject) {
        
        if midRightImage.image == nil && playersTurn == true {
            midRightImage.image = gameElements[0].image
            playersTurn = false
            midHoriz.append(gameElements[0])
            rightVert.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func midMidButton(sender: AnyObject) {
        
        if midMidImage.image == nil && playersTurn == true {
            midMidImage.image = gameElements[0].image
            playersTurn = false
            midHoriz.append(gameElements[0])
            midVert.append(gameElements[0])
            rightDiag.append(gameElements[0])
            leftDiag.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func midLeftButton(sender: AnyObject) {
        
        if midLeftImage.image == nil && playersTurn == true {
            midLeftImage.image = gameElements[0].image
            playersTurn = false
            midHoriz.append(gameElements[0])
            leftVert.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func bottomRightButton(sender: AnyObject) {
        
        if bottomRightImage.image == nil && playersTurn == true {
            bottomRightImage.image = gameElements[0].image
            playersTurn = false
            bottomHoriz.append(gameElements[0])
            rightVert.append(gameElements[0])
            leftDiag.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func bottomMidButton(sender: AnyObject) {
        
        if bottomMidImage.image == nil && playersTurn == true {
            bottomMidImage.image = gameElements[0].image
            playersTurn = false
            bottomHoriz.append(gameElements[0])
            midVert.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    @IBAction func bottomLeftButton(sender: AnyObject) {
        
        if bottomLeftImage.image == nil && playersTurn == true {
            bottomLeftImage.image = gameElements[0].image
            playersTurn = false
            bottomHoriz.append(gameElements[0])
            leftVert.append(gameElements[0])
            rightDiag.append(gameElements[0])
//            timerInit()
            enemyTurn()
        }
    }
    
    
    // Helpers
    
    func defineElements() {
        let x = GameElement()
        x.name = .X
        x.image = UIImage(named: "X.png")
        gameElements.append(x)
        
        let o = GameElement()
        o.name = .O
        o.image = UIImage(named: "O.png")
        gameElements.append(o)
        
    }
    
//    func timerInit() {
//        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "timerStart", userInfo: nil, repeats: true)
//    }
    
    func enemyTurn() {
//        counter++
//        timer.invalidate()
//        if counter >= 1 {
            playersTurn = true
            println("works")
        }
    }
}

