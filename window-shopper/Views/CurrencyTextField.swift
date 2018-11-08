//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by 67621177 on 08/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    override func prepareForInterfaceBuilder() {
//        super.prepareForInterfaceBuilder()
        self.setUp()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setUp()
    }
    
    func setUp(){
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2545483733)
        layer.cornerRadius = 5
        textAlignment = .center
        
        if let p = placeholder {
            self.attributedPlaceholder = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        }else {
            self.attributedPlaceholder = NSAttributedString(string: "Text here", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        }
    }
}
