//
//  ViewController.swift
//  colorGuessingGameExercise
//
//  Created by Stephanie Ramos on 11/1/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorGenerated = BRGValue()
    var score = 0
    var highScore = 0
    
    
    @IBOutlet weak var randomColorImage: UIView!
    @IBOutlet weak var guessThatColor: UILabel!
    @IBOutlet weak var currentScore: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var blueOutlet: UIButton!
    @IBOutlet weak var greenOutlet: UIButton!
    @IBOutlet weak var redOutlet: UIButton!
    
   @IBAction func playAgain(_ sender: UIButton) {
   }
    
    func currentScoreGenerator() {
        score += 1
    }
    
    func highScoreGenerator() {
        highScore += 1
    }
    
    @IBAction func randomColorButtons(_ sender: UIButton) {
            switch sender.tag {
            case 0:
                if colorGenerated.highestBGR() == colorGenerated.green {
                    currentScoreGenerator()
                    guessThatColor.text = "You Win"
                    currentScore.text = "The current score is \(score)"
                     randomColorImage.backgroundColor = colorGenerated.bgrColor()
                } else {
                    guessThatColor.text = "You Lose"
                    [redOutlet, blueOutlet, greenOutlet].forEach({$0?.isEnabled = false})
                }
                
            case 1:   if colorGenerated.highestBGR() == colorGenerated.blue {
                          currentScoreGenerator()
                          guessThatColor.text = "You Win"
                          currentScore.text = "The current score is \(score)"
                           randomColorImage.backgroundColor = colorGenerated.brgColor()
                      } else {
                          guessThatColor.text = "You Lose"
                          [redOutlet, blueOutlet, greenOutlet].forEach({$0?.isEnabled = false})
                      }
            case 2:   if colorGenerated.highestBRG() == colorGenerated.red {
                          currentScoreGenerator()
                          guessThatColor.text = "You Win"
                          currentScore.text = "The current score is \(score)"
                           randomColorImage.backgroundColor = colorGenerated.brgColor()
                      } else {
                          guessThatColor.text = "You Lose"
                          [redOutlet, blueOutlet, greenOutlet].forEach({$0?.isEnabled = false})
                      }
            default:
                print("This is Not Located")
            }
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            redOutlet.backgroundColor = .red
            greenOutlet.backgroundColor = .green
            blueOutlet.backgroundColor = .blue
            randomColorImage.backgroundColor = colorGenerated.brgColor()
            
        }
        
    }
