//
//  AdditionTestCase.swift
//  CountOnMeTests
//
//  Created by vador on 30/09/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//


import XCTest
@testable import CountOnMe

class AdditionTestCase: XCTestCase {



    func testGivenAdditionIs78By2_WhenAdditioning_ThenTotalIs80() {

        XCTAssert(Addition(78,2).value == 80)




    }



    func testGivenAdditionIs1Plus2Plus2_WhenAdditioning_ThenTotalIs5(){


        XCTAssert(Addition(1, Addition(2, 2)).value == 5)


    }


    
    func testGivenAdditionIs78By2PlusAddition4Plus10_WhenAdditioning_ThenTotalIs94() {

        XCTAssert(Addition(Addition(78,2) , Addition(4,10)).value == 94)


    }


    func testGivenAddition10Minus2Plus5_WhenAdditioning_ThenTotalIs13(){



        XCTAssert(Addition (Minus(10, 2),5).value == 13)

    }
}
