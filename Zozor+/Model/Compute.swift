//
//  Compute.swift
//  CountOnMe
//
//  Created by vador on 23/10/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//

/*
 1 + 1 + 1
 2 + 1
 3

 1 + 2 + 3 * 4
 3 + 12
 15

 */

import Foundation
class Compute {

    var userInput: [String]

    func total() -> Int {
        var finalResult = userInput
        // we make a loop to reduce the operations in the board to get the final result 

        while finalResult.count > 1 {

            // we check if there is multiply or division in the list if yes we take the element in the list, we take the previous element and the next element in the list.We make the calcul between the two elements and we replace it in the finalResult variable

            let firstMultiply =  finalResult.firstIndex(of: "*")
            let diviser =  finalResult.firstIndex(of: "/")
            if firstMultiply != nil || diviser != nil{
                let index = (firstMultiply ?? diviser)!
                let left = finalResult[index - 1]
                let op = finalResult[index]
                let right = finalResult[index + 1]
                let result = compute(left: Int(left)!, op: op, right: Int(right)!)
                finalResult[index-1] = "\(result.value)"
                finalResult.remove(at: index)
                finalResult.remove(at: index)
            }

            let addtioner = finalResult.firstIndex(of: "+")
            let soustractor = finalResult.firstIndex(of: "-")
            if addtioner != nil || soustractor != nil {
                let index = (addtioner ?? soustractor)!
                let left = finalResult[index - 1]
                let op = finalResult[index]
                let right = finalResult[index + 1]
                let result = compute(left: Int(left)!, op: op, right: Int(right)!)
                finalResult[index-1] = "\(result.value)"
                finalResult.remove(at: index)
                finalResult.remove(at: index)
            }

        }
        return Int(finalResult.first!)!
    }

    func compute(left: Value, op: String, right: Value) -> Value {
        switch op {
        case "+": return Addition(left, right)
        case "-": return Minus(left, right)
        case "/": return Division(left, right)
        case "*": return Multiply(left, right)
        default: return 0
        }
    }

    init() {
        userInput = []
    }

}
