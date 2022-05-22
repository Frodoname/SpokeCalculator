//
//  ViewController.swift
//  Spoke Calculator
//
//  Created by Fed on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var howManySpokesButton: UIButton!
    @IBOutlet weak var erdField: UITextField!
    @IBOutlet weak var hubSizeField: UITextField!
    @IBOutlet weak var howManyCrossesButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.setTitleColor(UIColor.black, for: .normal)
        calculateButton.setTitle("Расчитать", for: .normal)
        calculateButton.layer.cornerRadius = calculateButton.frame.width / 12
        calculateButton.layer.masksToBounds = true
        calculateButton.layer.backgroundColor = UIColor.systemBlue.cgColor
        calculateButton.layer.borderWidth = 1
        
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print("all ok")
    }
    
    
}

