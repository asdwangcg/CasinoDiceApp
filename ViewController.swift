//
//  ViewController.swift
//  Dice app
//
//  Created by PUNEET TOKHI on 7/19/17.
//  Copyright © 2017 Appmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image_2: UIImageView!
    @IBOutlet var image_1: UIImageView!
    
    var diceRoll1: Int = 0;
    var diceRoll2: Int = 0;
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4","dice5", "dice6"]

    @IBAction func roll_Button(_ sender: Any) {
        
      updateDiceImages()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateDiceImages(){
    
        diceRoll1 = Int(arc4random_uniform(6))
        diceRoll2 = Int(arc4random_uniform(6))
        
        
        
        print(diceRoll1)
        image_1.image = UIImage(named: diceArray[diceRoll1]);
        image_2.image = UIImage(named: diceArray[diceRoll2]);
    
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

