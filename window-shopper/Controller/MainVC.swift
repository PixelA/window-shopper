//
//  ViewController.swift
//  window-shopper
//
//  Created by Asherlee Levy on 8/4/18.
//  Copyright © 2018 Asherlee Levy. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9746767241, green: 0.5594085431, blue: 0.003124905569, alpha: 1)
        calBtn.setTitle("calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }

    @objc func calculate() {
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let  wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

