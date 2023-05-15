//
//  ViewController.swift
//  SalaryCalculator
//
//  Created by Demo 01 on 18/01/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    var tax : Float = 0
    var bSal : Float = 0
    @IBOutlet var BasicLbl : UILabel!
    @IBOutlet var TALbl : UILabel!
    @IBOutlet var DALbl : UILabel!
    @IBOutlet var CommLbl : UILabel!
    @IBOutlet var PTLbl : UILabel!
    @IBOutlet var MOLLbl : UILabel!
    @IBOutlet var TaxLbl : UILabel!
    @IBOutlet var salLbl : UILabel!

    @IBOutlet var BasicInp : UITextField!
    @IBOutlet var TAInp : UITextField!
    @IBOutlet var DAInp : UITextField!
    @IBOutlet var CommInp : UITextField!
    @IBOutlet var PTInp : UITextField!
    @IBOutlet var MOLInp : UITextField!
    @IBOutlet var TaxInp : UITextField!
    
    @IBAction func btnTAx(sender:Any)
    {
        bSal = Float(self.BasicInp.text!) ?? 0
        let ta:Float = Float(self.TAInp.text!) ?? 0
        let da:Float = Float(self.DAInp.text!) ?? 0
        let comm:Float = Float(self.CommInp.text!) ?? 0
        let pt:Float = Float(self.PTInp.text!) ?? 0
        let mol:Float = Float(self.MOLInp.text!) ?? 0
        tax = (bSal + ta + da + comm + pt + mol) * 0.18
        TaxInp.text = String(tax)
    }

    @IBAction func btn(sender:Any)
    {
        let sal : Float = Float(bSal - tax)
        salLbl.text = String(sal)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) != nil
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    override func viewDidLoad()
    {
        BasicInp.delegate = self
        TAInp.delegate = self
        DAInp.delegate = self
        CommInp.delegate = self
        PTInp.delegate = self
        MOLInp.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

