//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Asherlee Levy on 8/4/18.
//  Copyright © 2018 Asherlee Levy. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6962950537)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
}
