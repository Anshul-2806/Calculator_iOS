//
//  CalculatorSecondVersionViewController.swift
//  Calculator
//
//  Created by macbook pro on 04/02/23.
//

import UIKit

class CalculatorSecondVersionViewController: UIViewController
{
    //    var param1:String? , param2:String?
    //    var oper = ""
    //
    //    let operato:[Character] = ["+","-","*" ,"/"]
    //    @IBOutlet weak var field: UITextField!
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //
    //    }
    //    func param1(_ operatorr:String){
    //        let temp = field.text?.last
    //        var hasOperator = false
    //        operato.forEach{value in
    //            if temp == value {
    //                hasOperator = true}
    //
    //        }
    //        if hasOperator == false{
    //            param1 = field.text
    //            field.text?.append(operatorr)
    //            oper = operatorr
    //        }
    //       print(param1!)
    //    }
    //
    //    func solution() -> Float{
    //        switch oper
    //        {
    //        case "+" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
    //            return Float((Float(param1!) ?? 0) + (Float(param2!) ?? 0))
    //
    //        case "-" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
    //            return Float((Float(param1!) ?? 0) - (Float(param2!) ?? 0))
    //
    //        case "*" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
    //            return Float((Float(param1!) ?? 0) * (Float(param2!) ?? 0))
    //
    //        case "/" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
    //            return Float((Float(param1!) ?? 0) / (Float(param2!) ?? 0))
    //
    //        default  :
    //            return 0
    //
    //        }
    //
    //    }
    //
    //
    //    @IBAction func plus(_ sender: Any) {
    //    param1("+")    }
    //    @IBAction func equals(_ sender: Any) {
    //        //        param2 = field.text.formIndex((before: field.text?.index(of: "+")))
    //        let snippet = field.text!
    //
    //        operato.forEach{value in
    //            if snippet.contains(value) == true {
    //                param2 = snippet.components(separatedBy: String(value))[1]
    //                print(param1! + " :::: " + param2!)
    //                if param2?.isEmpty == false{
    //                    field.text = String(format: solution() == floor(solution()) ? "%.0f" : "%.1f", solution())
    //                    print("Solution ::: " + String(solution()))
    //                }}
    //        }
    //        }
    //
    //    @IBAction func minus(_ sender: Any) {
    //       param1("-")
    //}
    //    @IBAction func multiply(_ sender: Any) {
    //        param1("*")}
    //    @IBAction func divide(_ sender: Any) {
    //        param1("/")
    //}
    //
    //    @IBAction func decimal (_ sender: Any) {
    //        field.text?.append(".")
    //
    //    }
    //    @IBAction func zero(_ sender: Any) {
    //        field.text?.append("0")
    //
    //    }
    //    @IBAction func one(_ sender: Any) {
    //        field.text?.append("1")
    //
    //    }
    //    @IBAction func two(_ sender: Any) {
    //         field.text?.append("2")
    //    }
    //    @IBAction func three(_ sender: Any) {
    //        field.text?.append("3")
    //    }
    //
    //    @IBAction func four(_ sender: Any) {
    //        field.text?.append("4")
    //    }
    //
    //     @IBAction func five(_ sender: Any) {
    //         field.text?.append("5")
    //     }
    //    @IBAction func six(_ sender: Any) {
    //        field.text?.append("6")
    //    }
    //
    //    @IBAction func seven(_ sender: Any) {
    //        field.text?.append("7")
    //    }
    //    @IBAction func eight(_ sender: Any) {
    //        field.text?.append("8")
    //    }
    //    @IBAction func nine(_ sender: Any) {
    //        field.text?.append("9")
    //    }
    //
    //    @IBAction func backSpace(_ sender: Any) {
    //        if field.text != "" {
    //            field.text?.removeLast()
    //
    //        }
    //
    //}
    //    @IBAction func clearr(_ sender: Any) {
    //        if field.text != "" {
    //            field.text?.removeAll()
    //
    //        }}
    //    @IBAction func clear(_ sender: Any) {
    //        if field.text != "" {
    //            field.text?.removeAll()
    //
    //        }    }
    //
        var param1:String? , param2:String?
        var oper = ""
       
        let operato:[Character] = ["+","-","*" ,"/"]
        @IBOutlet weak var field: UITextField!
    
        override func viewDidLoad()
        {
            super.viewDidLoad()
        }
    
        func param1(_ operatorr:String)
        {
            let temp = field.text?.last
            var hasOperator = false
            operato.forEach{value in
                if temp == value
                {
                    hasOperator = true
                }
            }
            if hasOperator == false
            {
                param1 = field.text
                field.text?.append(operatorr)
                oper = operatorr
            }
           print(param1!)
        }
        
        func solution() -> Float
        {
            switch oper
            {
            case "+" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
                return Float((Float(param1!) ?? 0) + (Float(param2!) ?? 0))
                
            case "-" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
                return Float((Float(param1!) ?? 0) - (Float(param2!) ?? 0))
                
            case "*" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
                return Float((Float(param1!) ?? 0) * (Float(param2!) ?? 0))
                
            case "/" :print(String(Float(param1!) ?? 0) + " :::: " + String(Float(param2!) ?? 0))
                return Float((Float(param1!) ?? 0) / (Float(param2!) ?? 0))
                
            default  :
                return 0
            }
        }
        
        
        @IBAction func equals(_ sender: Any)
        {
            let snippet = field.text!
                operato.forEach
                {
                    value in
                    if snippet.contains(value) == true
                    {
                        param2 = snippet.components(separatedBy: String(value))[1]
                        print(param1! + " :::: " + param2!)
                        if param2?.isEmpty == false
                        {
                            field.text = String(format: solution() == floor(solution()) ? "%.0f" : "%.1f", solution())
                            print("Solution ::: " + String(solution()))
                        }
                    }
                }
            }
        
        @IBAction func plus(_ sender: Any)
        {
            param1("+")
        }
    
        @IBAction func minus(_ sender: Any)
        {
           param1("-")
        }
    
        @IBAction func multiply(_ sender: Any)
        {
            param1("*")
        }
    
        @IBAction func divide(_ sender: Any)
        {
            param1("/")
        }
        
        @IBAction func decimal (_ sender: Any)
        {
            field.text?.append(".")
        }
    
        @IBAction func zero(_ sender: Any)
        {
            field.text?.append("0")
        }
    
        @IBAction func one(_ sender: Any)
        {
            field.text?.append("1")
        }
    
        @IBAction func two(_ sender: Any)
        {
             field.text?.append("2")
        }
        @IBAction func three(_ sender: Any)
        {
            field.text?.append("3")
        }
        
        @IBAction func four(_ sender: Any)
        {
            field.text?.append("4")
        }
        
         @IBAction func five(_ sender: Any)
         {
             field.text?.append("5")
         }
        @IBAction func six(_ sender: Any)
        {
            field.text?.append("6")
        }
        
        @IBAction func seven(_ sender: Any)
        {
            field.text?.append("7")
        }
        @IBAction func eight(_ sender: Any)
        {
            field.text?.append("8")
        }
        @IBAction func nine(_ sender: Any)
        {
            field.text?.append("9")
        }
        
        @IBAction func backSpace(_ sender: Any)
        {
            if field.text != ""
            {
                field.text?.removeLast()
                
            }
           
    }
        
        @IBAction func clear(_ sender: Any)
        {
            if field.text != ""
            {
                field.text?.removeAll()
            }
        }
}
