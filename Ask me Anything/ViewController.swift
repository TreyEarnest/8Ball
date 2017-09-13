//
//  ViewController.swift
//  Ask me Anything
//
//  Created by Trey Earnest on 9/9/17.
//  Copyright © 2017 Trey Earnest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallIndex: Int = 0
    let forturnBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    // Outlets
    @IBOutlet weak var fortuneBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
    }
    @IBAction func askBtnPressed(_ sender: Any) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallIndex = Int(arc4random_uniform(5))
        fortuneBall.image = UIImage(named: forturnBallArray[randomBallIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }

}
