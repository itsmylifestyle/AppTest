//
//  AppTestTests.swift
//  AppTestTests
//
//  Created by Айбек on 08.01.2024.
//

import XCTest
@testable import AppTest

final class AppTestTests: XCTestCase {

    let math = mathFunc()
    
    func testAddFunc() {
        let res = math.addInteger(x: 1, y: 2)
        
        XCTAssertEqual(res, 3)
    }
    
    func testMultFunc() {
        let res = math.multInteger(x: 2, y: 2)
        
        XCTAssertEqual(res, 4)
    }
    
    func testDivFunc() {
        let res = math.divInteger(x: 6, y: 2)
        
        XCTAssertEqual(res, 3)
    }
    
    func testMinFunc() {
        let res = math.minInteger(x: 5, y: 1)
        
        XCTAssertEqual(res, 4)
    }

}
