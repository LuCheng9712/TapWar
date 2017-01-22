//
//  ViewController.swift
//  TapWar
//
//  Created by Lu Cheng on 2017-01-21.
//  Copyright © 2017 Lu Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TopBtn: UIButton!
    @IBOutlet weak var BtmBtn: UIButton!
    
    @IBOutlet weak var BtmLabel: UILabel!
    @IBOutlet weak var TopLabel: UILabel!
    
    @IBOutlet weak var TopEnd: UILabel!
    @IBOutlet weak var BtmEnd: UILabel!
    @IBOutlet weak var EndScene: UIButton!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TopEnd.isHidden = true
        BtmEnd.isHidden = true
        EndScene.isHidden = true
        
        score = 0
        
        BtmLabel.text = "\(score)"
        TopLabel.text = "\(0 - score)"
   
        TopLabel.transform = CGAffineTransform(rotationAngle: 3.14)
        TopBtn.transform = CGAffineTransform(rotationAngle: 3.14)
        TopEnd.transform = CGAffineTransform(rotationAngle: 3.14)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TopBtnAction(_ sender: Any) {
        
        score -= 1
        BtmLabel.text = "\(score)"
        TopLabel.text = "\(0 - score)"
        
        testScore()
        
    }

    @IBAction func BtmBtnAction(_ sender: Any) {
        
        score += 1
        BtmLabel.text = "\(score)"
        TopLabel.text = "\(0 - score)"
        
        testScore()
        
    }
    
    func testScore() {
        
        if score >= 21 {
            
            TopEnd.isHidden = false
            BtmEnd.isHidden = false
            EndScene.isHidden = false
            
            TopEnd.text = "YOU LOSE!"
            BtmEnd.text = "YOU WIN!"
            
        }
        
        if score <= -21 {
            
            TopEnd.isHidden = false
            BtmEnd.isHidden = false
            EndScene.isHidden = false
            
            TopEnd.text = "YOU WIN!"
            BtmEnd.text = "YOU LOSE!"
            
        }
        
    }
    
    @IBAction func EndScene(_ sender: Any) {
        
        TopEnd.isHidden = true
        BtmEnd.isHidden = true
        EndScene.isHidden = true
        
        score = 0
        BtmLabel.text = "\(score)"
        TopLabel.text = "\(0 - score)"
        
    }
    
    
}











