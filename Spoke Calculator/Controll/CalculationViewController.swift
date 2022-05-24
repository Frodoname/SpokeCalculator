//
//  ViewController.swift
//  Spoke Calculator
//
//  Created by Fed on 22.05.2022.
//

import UIKit

class CalculationViewController: UIViewController {
    
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var howManySpokesButton: UIButton!
    @IBOutlet weak var erdField: UITextField!
    @IBOutlet weak var hubSizeField: UITextField!
    @IBOutlet weak var hubSize2Field: UITextField!
    @IBOutlet weak var howManyCrossesButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.setTitleColor(UIColor.white, for: .normal)
        calculateButton.setTitle("Расчитать", for: .normal)
        calculateButton.layer.cornerRadius = calculateButton.frame.width / 12
        calculateButton.layer.masksToBounds = true
        calculateButton.layer.backgroundColor = UIColor.systemBlue.cgColor
        calculateButton.layer.borderWidth = 1
        
        setPopupButton()
        
        self.hideKeyBoard()
        
        
        
        
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let erd = erdField.text
        let hubSize = hubSizeField.text
        let hubSize2 = hubSize2Field.text
        
        if erd != "", hubSize != "", hubSize2 != "" {
            
            let calculdateModel = CalculateModel(countSpokes: Double(howManySpokesButton.titleLabel!.text!)!, erd: Double(erd!)!, hubDiameter: Double(hubSize!)!, hubFlance: Double(hubSize2!)!, crossesCount: Double(howManyCrossesButton.titleLabel!.text!)!)
            
                print(calculateBrain.calculatelength(parameter: calculdateModel))
            
            erdField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            hubSizeField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            hubSize2Field.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            
        } else {
            if erd == "" {
                
                erdField.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            }
            
            if hubSize == "" {
                hubSizeField.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            }
            
            if hubSize2 == "" {
                hubSize2Field.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            }
            
            
        }
        
        
        
        
        
        //print(howManySpokesButton.titleLabel!.text!)
        //print(howManyCrossesButton.titleLabel!.text!)
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

