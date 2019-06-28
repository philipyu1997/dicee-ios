//
//  ViewController.swift
//  Dicee
//
//  Created by Philip Yu on 6/28/19.
//  Copyright © 2019 Philip Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    // Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDiceImages()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // This will get executed when roll button is pressed
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

