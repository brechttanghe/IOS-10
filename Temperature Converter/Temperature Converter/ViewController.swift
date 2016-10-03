//
//  ViewController.swift
//  Temperature Converter
//
//  Created by brecht tanghe on 18/09/16.
//  Copyright © 2016 brecht tanghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var conversions: UILabel!
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertClicked(_ sender: AnyObject) {
        if let result = tempEntry.text{
            if(result == ""){
                return
            }
            else{
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    
                    updateCountByOne()
                }
            }
        }
    }
    
    func updateCountByOne(){
        count += 1
        conversions.text = String(count) + " Conversions"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

