//
//  ViewController.swift
//  jsq3.0
//
//  Created by 范宇辰 on 16/3/28.
//  Copyright © 2016年 范宇辰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var operand1:String = ""
    var operand2:String = ""
    var operat:String = ""


    @IBOutlet weak var results : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func zero(sender: UIButton) {
        let value = sender.currentTitle
        print(value)
        if (value == "+" || value == "-" || value == "*" || value == "÷"){
            operat = value!
            return
        }
        else if value == "="{
            
            switch operat{
            case "+":
                results.text =  String((Double(operand1)! + Double(operand2)!))
            case "-":
                results.text =  String(Double(operand1)! - Double(operand2)!)
            case "*":
                results.text =  String(Double(operand1)! * Double(operand2)!)
            case "/":
                results.text =  String(Double(operand1)! / Double(operand2)!)
            default :
                results.text = String(0)
            }
            return
        }
        else{
            if operat == "" {
                operand1 = operand1 + value!
                results.text = operand1
            }
            else{
                operand2 = operand2 + value!
                results.text = operand2
            }
        }
    }
}

