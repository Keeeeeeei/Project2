//
//  ViewController.swift
//  Project2
//
//  Created by Kei on 2020/07/19.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textFieled2: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func answer(_ sender:UISegmentedControl) {
        let num1 = Int(textField1.text!) ?? 0
        let num2 = Int(textFieled2.text!) ?? 0
        
        switch sender.selectedSegmentIndex {
            case 0:
                label.text = String(num1 + num2)
            case 1:
                label.text = String(num1 - num2)
            case 2:
                label.text = String(num1 * num2)
            case 3:
                label.text = String(num1 / num2)
            default:
                print("該当無し")
            }
        }
        
    @IBAction func button(_ sender: UIButton) {
        answer(segmentedControl)
    }
    
}
   

    
    
    
    
    


