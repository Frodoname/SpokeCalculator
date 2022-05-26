//
//  ResultViewController.swift
//  Spoke Calculator
//
//  Created by Fed on 24.05.2022.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var resultLeftSide: String?
    var resultRightSide: String?
    
    @IBOutlet weak var resultLabelLeft: UILabel!
    @IBOutlet weak var resultLabelRight: UILabel!
    
    
    override func viewDidLoad() {
        
        resultLabelLeft.text = resultLeftSide
        resultLabelRight.text = resultRightSide
        
        //navigationController?.navigationBar.backItem?.title = "Назад"
        
    }
    
    @IBAction func copyButtonLeft(_ sender: UIButton) {
        UIPasteboard.general.string = resultLabelLeft.text
    }
    
    
    @IBAction func copyButtonRight(_ sender: UIButton) {
        UIPasteboard.general.string = resultLabelRight.text
    }
    
    
}
