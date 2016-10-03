//
//  ViewController.swift
//  Calculator
//
//  Created by brecht tanghe on 18/09/16.
//  Copyright © 2016 brecht tanghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currenOperation: Operator = Operator.nothing
    var calcState: CalculationState = CalculationState.enteringNum
    
    var firstValue: String = ""

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //button actions
    @IBAction func numberClicked(_ sender: UIButton){
        updateDisplay (number: String(sender.tag))
    }
    
    func updateDisplay(number:String){
        if calcState == CalculationState.newNumStarted{
            if let num = resultLabel.text {
                if num != ""{
                    firstValue = num
                }
            }
            calcState = CalculationState.enteringNum
            resultLabel.text = number
        }
        else if calcState == CalculationState.enteringNum{
            resultLabel.text = resultLabel.text! + number
        }
    }
    @IBAction func operatorClicked(_ sender:UIButton){
        calcState = CalculationState.newNumStarted
        
        if let num = resultLabel.text{
            if num != ""{
                firstValue = num
                resultLabel.text = ""
            }
        }
        
        updateOperatorButton(tag: sender.tag)
        
        switch sender.tag {
        case 10:
            currenOperation = Operator.add
        case 11:
            currenOperation = Operator.substract
        case 12:
            currenOperation = Operator.times
        case 13:
            currenOperation = Operator.divide
        default:
            return
        }
    }
    @IBAction func equalClicked(_sender:UIButton){
        calculateSum()
    }
    
    func calculateSum(){
        if(firstValue.isEmpty){
            return
        }
        
        var result = ""
        
        if currenOperation == Operator.times{
            result = "\(Double(firstValue)! * Double(resultLabel.text!)!)"
        }
        else if currenOperation == Operator.divide{
            result = "\(Double(firstValue)! / Double(resultLabel.text!)!)"
        }
        else if currenOperation == Operator.add{
            result = "\(Double(firstValue)! + Double(resultLabel.text!)!)"
        }
        else if currenOperation == Operator.substract{
            result = "\(Double(firstValue)! - Double(resultLabel.text!)!)"
        }
        
        resultLabel.text = result
        calcState = CalculationState.newNumStarted
    }

    func updateOperatorButton(tag: Int){
        //Clear colors
        
        for var i in 10..<14 {
            if let button = self.view.viewWithTag(i) as? UIButton{
                button.backgroundColor = UIColor.clear
            }
        }
        
        if let button = self.view.viewWithTag(tag) as? UIButton{
            button.backgroundColor = UIColor.yellow
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

