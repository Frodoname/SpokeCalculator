//
//  PopUpViewController.swift
//  Spoke Calculator
//
//  Created by Fed on 27.05.2022.
//

import Foundation
import UIKit

class PopUpViewController: UIViewController {
    
    var calculationViewController = CalculationViewController()
    
    var titleResult = "Заголовок"
    var textResult = "Текст о том, как и что измерить"
    
    
    @IBOutlet weak var viewSet: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleResult
        textField.text = textResult
        
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}




