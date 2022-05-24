//
//  ResultViewController.swift
//  Spoke Calculator
//
//  Created by Fed on 24.05.2022.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var result: String?
    
    @IBOutlet weak var resultLabelLeft: UILabel!
    @IBOutlet weak var resultLabelRight: UILabel!
    
    
    override func viewDidLoad() {
        
        resultLabelLeft.text = result
        resultLabelRight.text = result
        
        //navigationController?.navigationBar.backItem?.title = "Назад"
        
    }
    
    @IBAction func copyButtonLeft(_ sender: UIButton) {
        UIPasteboard.general.string = resultLabelLeft.text
    }
    
    
    @IBAction func copyButtonRight(_ sender: UIButton) {
        UIPasteboard.general.string = resultLabelRight.text
    }
    
    
}
