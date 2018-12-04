//
//  Division.swift
//  CountOnMe
//
//  Created by vador on 09/10/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//

import Foundation
class Division: Value {
    
    var value: Int {

        return value1.value / value2.value

    }

    var value1: Value
    var value2: Value
    init(_ v1: Value, _ v2: Value) {
        self.value1 = v1
        self.value2 = v2
    }

    func divisioning () {
       
    }
}


