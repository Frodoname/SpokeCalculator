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
    @IBOutlet weak var hubSizeFlanceDiamterField: UITextField!
    @IBOutlet weak var leftCenterFlanceField: UITextField!
    @IBOutlet weak var rightCenterFlanceField: UITextField!
    @IBOutlet weak var howManyCrossesButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPopupButton()
        self.hideKeyBoard()
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let erd = erdField.text
        let hubSize = hubSizeFlanceDiamterField.text
        let hubSize2 = leftCenterFlanceField.text
        let hubSize3 = rightCenterFlanceField.text
        
        if erd != "", hubSize != "", hubSize2 != "", hubSize3 != "" {
            
            let calculdateModel = CalculateModel(countSpokes: Double(howManySpokesButton.titleLabel!.text!)!, erd: Double(erd!)!, hubDiameter: Double(hubSize!)!, leftHubFlance: Double(hubSize2!)!, rightHubFlance: Double(hubSize3!)!, crossesCount: Double(howManyCrossesButton.titleLabel!.text!)!)
            
                calculateBrain.calculateLengthLeftSide(parameter: calculdateModel)
                calculateBrain.calculateLengthRightSide(parameter: calculdateModel)
            
                erdField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
                hubSizeFlanceDiamterField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
                leftCenterFlanceField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            
                self.performSegue(withIdentifier: "goToResultViewController", sender: self)
            
        } else {
                if erd == "" {
                
                    erdField.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                }
            
                if hubSize == "" {
                    hubSizeFlanceDiamterField.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                }
            
                if hubSize2 == "" {
                    leftCenterFlanceField.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                }
            
                if hubSize3 == "" {
                    rightCenterFlanceField.attributedPlaceholder = NSAttributedString(string: "Введите значение", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                }
            
        }
        
    }
    
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        
            erdField.text = ""
            hubSizeFlanceDiamterField.text = ""
            leftCenterFlanceField.text = ""
            rightCenterFlanceField.text = ""
            
            erdField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            hubSizeFlanceDiamterField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            leftCenterFlanceField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
        rightCenterFlanceField.attributedPlaceholder = NSAttributedString(string: "milimeters", attributes: .none)
            
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultViewController" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultLeftSide = calculateBrain.getCalculatedLengthLeft()
            destinationVC.resultRightSide = calculateBrain.getCalculatedLengthRight()
        }
    }
    

//MARK: - Function for pop up
    
    func setPopupButton() {
        let optionClousere = {(action : UIAction) in
            print(action.title)}
        
        howManySpokesButton.menu = UIMenu(children : [
            UIAction(title : "28", handler: optionClousere),
            UIAction(title : "32", state: .on, handler: optionClousere),
            UIAction(title : "36", handler: optionClousere)
        ])
        
        howManySpokesButton.showsMenuAsPrimaryAction = true
        howManySpokesButton.changesSelectionAsPrimaryAction = true
        
        howManyCrossesButton.menu = UIMenu(children : [
            UIAction(title : "1", handler: optionClousere),
            UIAction(title : "2", handler: optionClousere),
            UIAction(title : "3", state: .on, handler: optionClousere),
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

