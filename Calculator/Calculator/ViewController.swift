//
//  ViewController.swift
//  Calculator
//
//  Created by macbook pro on 17/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNum: UITextField!
    var work:String = ""
    var num1:Float? = 0
    var num2:Float? = 0
    var operation : String = ""
    
    @IBAction func btn7(_ sender: Any) {
        let a = "7"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
    }
    
    @IBAction func btn8(_ sender: Any) {
        let a = "8"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
    }
    
    @IBAction func btn9(_ sender: Any) {
        let a = "9"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn6(_ sender: Any) {
        let a = "6"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn5(_ sender: Any) {
        let a = "5"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn4(_ sender: Any) {
        let a = "4"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn3(_ sender: Any) {
        let a = "3"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn2(_ sender: Any) {
        let a = "2"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn1(_ sender: Any) {
        let a = "1"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btn0(_ sender: Any) {
        let a = "0"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    func GetOldValue(value:String)
    {
//        work+=value
        work = work + value
    }
    
    @IBAction func btnPls(_ sender: Any) {
        operation = "+"
        num1 = Float(txtNum.text!)
        txtNum.text = ""
        
    }
    @IBAction func btnMins(_ sender: Any) {
        operation = "-"
        num1 = Float(txtNum.text!)
        txtNum.text = ""
        
    }
    @IBAction func btnMul(_ sender: Any) {
        operation = "*"
        num1 = Float(txtNum.text!)
        txtNum.text = ""
        
    }
    @IBAction func btnDiv(_ sender: Any) {
        operation = "/"
        num1 = Float(txtNum.text!)
        txtNum.text = ""
        
    }
    @IBAction func btnEq(_ sender: Any) {
        num2 = Float(txtNum.text!)
        txtNum.text = ""
        var num3:Float = 0
        
        if operation == "+"
        {
            num3 = Float(Int(Float(num1! + num2!)))
        }
        
        if operation == "-"
        {
            num3 = Float(Int(Float(num1! - num2!)))
        }
        
        if operation == "/"
        {
            num3 = Float(Int(Float(num1! / num2!)))
        }
        
        if operation == "*"
        {
            num3 = Float(Int(Float(num1! * num2!)))
        }
        
        if operation == "%"
        {
            num3 = Float(Int(Float(num1! / 100 * num2!)))
        }
        
        txtNum.text = String(num3)
    }
    @IBAction func btnMod(_ sender: Any) {
        operation = "%"
        num1 = Float(txtNum.text!)
        txtNum.text = ""
        
    }
    @IBAction func btnDot(_ sender: Any) {
        let a = "."
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    @IBAction func btnPlsMin(_ sender: Any) {
        let a = "+/-"
        txtNum.text! = (txtNum.text! ?? "") + String(a)
        
    }
    
    @IBAction func btnClr(_ sender: Any)
    {
        let a = ""
        txtNum.text! = String(a)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

