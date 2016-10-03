//
//  ViewController.swift
//  Astro Torch
//
//  Created by brecht tanghe on 10/09/16.
//  Copyright © 2016 brecht tanghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var clicked : Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
    }

    @IBOutlet weak var MyButton: UIButton!
    
    @IBAction func MyButtonClicked(_ sender: AnyObject) {
        if(clicked){
            self.view.backgroundColor = UIColor.blue
        }else{
            self.view.backgroundColor = UIColor.red
        }
        clicked = !clicked
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

