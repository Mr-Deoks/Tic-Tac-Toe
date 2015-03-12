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
    
    var allElements: [GameElement] = []
    
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
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if topRightImage.image == nil && playersTurn == false {
            topRightImage.image = gameElements[1].image
            playersTurn = true
            topHoriz.append(gameElements[1])
            rightVert.append(gameElements[1])
            rightDiag.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }
    
    @IBAction func topMidButton(sender: AnyObject) {
        
        if topMidImage.image == nil && playersTurn == true {
            topMidImage.image = gameElements[0].image
            playersTurn = false
            topHoriz.append(gameElements[0])
            midVert.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if topMidImage.image == nil && playersTurn == false {
            topMidImage.image = gameElements[1].image
            playersTurn = true
            topHoriz.append(gameElements[1])
            midVert.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }
    
    @IBAction func topLeftButton(sender: AnyObject) {
        
        if topLeftImage.image == nil && playersTurn == true {
            topLeftImage.image = gameElements[0].image
            playersTurn = false
            topHoriz.append(gameElements[0])
            leftVert.append(gameElements[0])
            leftDiag.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if topLeftImage.image == nil && playersTurn == false {
            topLeftImage.image = gameElements[1].image
            playersTurn = true
            topHoriz.append(gameElements[1])
            leftVert.append(gameElements[1])
            leftDiag.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }

    @IBAction func midRightButton(sender: AnyObject) {
        
        if midRightImage.image == nil && playersTurn == true {
            midRightImage.image = gameElements[0].image
            playersTurn = false
            midHoriz.append(gameElements[0])
            rightVert.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if midRightImage.image == nil && playersTurn == false {
            midRightImage.image = gameElements[1].image
            playersTurn = true
            midHoriz.append(gameElements[1])
            rightVert.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
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
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if midMidImage.image == nil && playersTurn == false {
            midMidImage.image = gameElements[1].image
            playersTurn = true
            midHoriz.append(gameElements[1])
            midVert.append(gameElements[1])
            rightDiag.append(gameElements[1])
            leftDiag.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }
    
    @IBAction func midLeftButton(sender: AnyObject) {
        
        if midLeftImage.image == nil && playersTurn == true {
            midLeftImage.image = gameElements[0].image
            playersTurn = false
            midHoriz.append(gameElements[0])
            leftVert.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if midLeftImage.image == nil && playersTurn == false {
            midLeftImage.image = gameElements[1].image
            playersTurn = true
            midHoriz.append(gameElements[1])
            leftVert.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }
    
    @IBAction func bottomRightButton(sender: AnyObject) {
        
        if bottomRightImage.image == nil && playersTurn == true {
            bottomRightImage.image = gameElements[0].image
            playersTurn = false
            bottomHoriz.append(gameElements[0])
            rightVert.append(gameElements[0])
            leftDiag.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if bottomRightImage.image == nil && playersTurn == false {
            bottomRightImage.image = gameElements[1].image
            playersTurn = true
            bottomHoriz.append(gameElements[1])
            rightVert.append(gameElements[1])
            leftDiag.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }
    
    @IBAction func bottomMidButton(sender: AnyObject) {
        
        if bottomMidImage.image == nil && playersTurn == true {
            bottomMidImage.image = gameElements[0].image
            playersTurn = false
            bottomHoriz.append(gameElements[0])
            midVert.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if bottomMidImage.image == nil && playersTurn == false {
            bottomMidImage.image = gameElements[1].image
            playersTurn = true
            bottomHoriz.append(gameElements[1])
            midVert.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
        }
    }
    
    @IBAction func bottomLeftButton(sender: AnyObject) {
        
        if bottomLeftImage.image == nil && playersTurn == true {
            bottomLeftImage.image = gameElements[0].image
            playersTurn = false
            bottomHoriz.append(gameElements[0])
            leftVert.append(gameElements[0])
            rightDiag.append(gameElements[0])
            allElements.append(gameElements[0])
            checkWin()
//            timerInit()
//            enemyTurn()
        } else if bottomLeftImage.image == nil && playersTurn == false {
            bottomLeftImage.image = gameElements[1].image
            playersTurn = true
            bottomHoriz.append(gameElements[1])
            leftVert.append(gameElements[1])
            rightDiag.append(gameElements[1])
            allElements.append(gameElements[1])
            checkWin()
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
        
        }
    
    func checkWin() {
        let xSign = gameElements[0].name
        let oSign = gameElements[1].name
        

            
        if topHoriz.count == 3 {
            
            if topHoriz[0].name == xSign && topHoriz[1].name == xSign && topHoriz[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if topHoriz[0].name == oSign && topHoriz[1].name == oSign && topHoriz[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            }
            
        }
        
        if midHoriz.count == 3 {
            
             if midHoriz[0].name == xSign && midHoriz[1].name == xSign && midHoriz[2].name == xSign {
            showAlertWithText()
            resetTheGame()
            
            } else if midHoriz[0].name == oSign && midHoriz[1].name == oSign && midHoriz[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            }
        
        }
        
        if bottomHoriz.count == 3 {
            
            if bottomHoriz[0].name == xSign && bottomHoriz[1].name == xSign && bottomHoriz[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if bottomHoriz[0].name == oSign && bottomHoriz[1].name == oSign && bottomHoriz[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            
        }
            
        if rightVert.count == 3 {
                
            } else if rightVert[0].name == xSign && rightVert[1].name == xSign && rightVert[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if rightVert[0].name == oSign && rightVert[1].name == oSign && rightVert[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            
        }
            
        if midVert.count == 3 {
                
            if midVert[0].name == xSign && midVert[1].name == xSign && midVert[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if midVert[0].name == oSign && midVert[1].name == oSign && midVert[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            }
                
        }
            
        if leftVert.count == 3 {
                
            if leftVert[0].name == xSign && leftVert[1].name == xSign && leftVert[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if leftVert[0].name == oSign && leftVert[1].name == oSign && leftVert[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            }
                
        }
            
        if rightDiag.count == 3 {
                
            if rightDiag[0].name == xSign && rightDiag[1].name == xSign && rightDiag[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if rightDiag[0].name == oSign && rightDiag[1].name == oSign && rightDiag[2].name == oSign {
            showAlertWithText()
            resetTheGame()
            }
                
        }
            
        if leftDiag.count == 3 {
                
            if leftDiag[0].name == xSign && leftDiag[1].name == xSign && leftDiag[2].name == xSign {
            showAlertWithText()
            resetTheGame()
                
            } else if leftDiag[0].name == oSign && leftDiag[1].name == oSign && leftDiag[2].name == oSign {
            showAlertWithText()
            resetTheGame()
                }
            }
        }

       if allElements.count == 9 {
            showAlertWithText(header: "Tie!")
            resetTheGame()
        }
}

    func showAlertWithText(header : String = "You Won!", message : String = "Restart the Game?") {
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Yeah!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func resetTheGame() {
        
        topHoriz = []
        midHoriz = []
        bottomHoriz = []
        rightVert = []
        midVert = []
        leftVert = []
        rightDiag = []
        leftDiag = []
        
        topRightImage.image = nil
        topMidImage.image = nil
        topLeftImage.image = nil
        midRightImage.image = nil
        midMidImage.image = nil
        midLeftImage.image = nil
        bottomRightImage.image = nil
        bottomMidImage.image = nil
        bottomLeftImage.image = nil
        
        allElements = []
        
        playersTurn = true
    }
    }


