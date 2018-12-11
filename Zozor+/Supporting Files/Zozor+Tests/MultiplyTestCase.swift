//
//  MultiplyTestCase.swift
//  CountOnMeTests
//
//  Created by vador on 30/09/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//

import XCTest
@testable import CountOnMe

class MultiplyTestCase: XCTestCase {
    
    func testGivenMultiplyIs78By2_WhenMultiplying_ThenTotalIs156(){
        XCTAssert(Multiply(78,2).value == 156)
    }
    
    func testGivenMultiplyIs15By3By6_WhenMultiplying_ThenTotalIs270(){
        XCTAssert(Multiply(15,Multiply(3,6)).value == 270)
    }
    
    func testGivenMultiplyIs8Plus4By4By4_WhenMultiplying_ThenTotalIs192(){
        XCTAssert(Multiply(Addition(8,4),Multiply(4,4)).value == 192)
    }
    
}

