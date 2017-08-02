//
//  Calculate.swift
//  window-shopper-exp
//
//  Created by Nuansa Lembayung on 2/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

class Calculate {
    init() {
        
    }
    
    class func countHours(wage: Double, price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
