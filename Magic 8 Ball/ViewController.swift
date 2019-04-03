//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jordan Leavitt on 4/3/19.
//  Copyright © 2019 Jordan Leavitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageAsset: UIImageView!
    
    var randomBallIndex = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateBallImage()
    }
    
    func updateBallImage() {
        
        randomBallIndex = Int(arc4random_uniform(5))
        
        imageAsset.image = UIImage(named: ballArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateBallImage()
        
    }
}

