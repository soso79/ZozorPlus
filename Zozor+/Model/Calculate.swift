//
//  Operation.swift
//  CountOnMe
//
//  Created by vador on 25/09/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//

import Foundation
import UIKit

    






enum Op {
    case plus(Value, Value)
    case minus(Value, Value)
    case multiply(Value, Value)
}




extension Int: Value {
    var value: Int { return self }
}

extension Op: Value {
    var value: Int {
        switch self {

        case .plus(let left, let right):
            return left.value + right.value
        case .minus(let left, let right):
            return left.value - right.value
        case .multiply(let left, let right):
            return left.value * right.value
        }
    }

    //var computedString: String {}


}




let total = Op.plus(Op.plus(1, 1), 1).value
// 1 + 1 + 1 <= computedString

let total2 = Op.plus(Op.minus(4, 1), Op.multiply(1, 10)).value
// 4 + 1 + 1 * 10 <= computedString





