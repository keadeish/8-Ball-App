//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Keadeish Morrison on 30/07/2020.
//  Copyright © 2020 Psychician. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        updateBallImages()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
      updateBallImages()
    }
    func updateBallImages(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage (named: diceArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
}

