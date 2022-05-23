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
        
        setPopupButton()
        
        self.hideKeyBoard()
        
        
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print(howManySpokesButton.titleLabel!.text!)
        print(howManyCrossesButton.titleLabel!.text!)
    }
    

//MARK: - Function for pop up
    
    func setPopupButton() {
        let optionClousere = {(action : UIAction) in
            print(action.title)}
        
        howManySpokesButton.menu = UIMenu(children : [
            UIAction(title : "28", state: .on, handler: optionClousere),
            UIAction(title : "32", handler: optionClousere),
            UIAction(title : "36", handler: optionClousere)
        ])
        
        howManySpokesButton.showsMenuAsPrimaryAction = true
        howManySpokesButton.changesSelectionAsPrimaryAction = true
        
        howManyCrossesButton.menu = UIMenu(children : [
            UIAction(title : "1", state: .on, handler: optionClousere),
            UIAction(title : "2", handler: optionClousere),
            UIAction(title : "3", handler: optionClousere),
            UIAction(title : "4", handler: optionClousere)
        ])
        
        howManyCrossesButton.showsMenuAsPrimaryAction = true
        howManyCrossesButton.changesSelectionAsPrimaryAction = true
        
    }
    
    
}

//MARK: - Dismiss keyboard

extension UIViewController {
    func hideKeyBoard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dissmissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dissmissKeyboard() {
        view.endEditing(true)
    }
    
}

