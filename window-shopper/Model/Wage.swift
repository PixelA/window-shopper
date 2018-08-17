//
//  Wage.swift
//  window-shopper
//
//  Created by Asherlee Levy on 8/16/18.
//  Copyright © 2018 Asherlee Levy. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
