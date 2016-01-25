//
//  ViewController.swift
//  retro-calculator
//
//  Created by Sophie on 24/01/2016.
//  Copyright © 2016 serge. All rights reserved.
//

import UIKit
import AVFoundation

//lecture à 00.30.04
class ViewController: UIViewController {
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Substract = "-"
        case Add = "+"
        case Equals = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound:AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation: Operation = Operation.Empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        do{
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        }catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    @IBAction func numberPressed(btn: UIButton!){
        btnSound.play()
    }

    @IBAction func onDividePressed(sender: AnyObject) {
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    
    @IBAction func onSubstractPressed(sender: AnyObject) {
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
    }
    
    @IBAction func onEqualPressed(sender: AnyObject) {
    }
}

