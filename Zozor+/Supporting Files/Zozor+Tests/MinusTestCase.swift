//
//  MinusTestCase.swift
//  CountOnMeTests
//
//  Created by vador on 30/09/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//

import XCTest
@testable import CountOnMe

class MinusTestCase: XCTestCase {
    
    
    
    func testGivenMinusIs36Less2_WhenSoustracting_ThenTotalIs34() {
        
        XCTAssert(Minus(36,2).value == 34)
        
        
    }
    
    
    
    func testGivenMinusIs10Less2Plus2_WhenSoustracting_ThenTotalIs6(){
        
        
        XCTAssert(Minus(10, Addition(2, 2)).value == 6)
        
        
    }
    
    
    
    func testGivenMinusIs88Less2Less14Less10_WhenSoustracting_ThenTotalIs82() {
        
        XCTAssert(Minus(Minus(88,2) , Minus(14,10)).value == 82)
        
        
    }
    
    
    func testGivenMinusIs10By2Less5_WhenSoustracting_ThenTotalIs15(){
        
        
        
        XCTAssert(Minus (Multiply(10, 2),5).value == 15)
        
    }
}


