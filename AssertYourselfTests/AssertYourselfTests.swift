//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by HAQQQABD on 23/07/2023.
//

import XCTest
@testable import AssertYourself

struct SimpleStruct {
    let x: Int
    let y: Int
}

struct SimpleStructWithDescription : CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String {"(\(x), \(y))"}
}



final class AssertYourselfTests: XCTestCase {
    
    func test_fail_withSimpleMessage(){
       XCTFail("We have a problem")
    }

    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The Answer to the Great Question is \(theAnswer)")
    }
    
    func test_avoidConditionalCode(){
        let sucess = false
        XCTAssertFalse(sucess)
    }
    
    func test_assertNil(){
        let optionalValue : Int? = 123
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNilWithSimpleStruct(){
        let optionalValue : SimpleStruct? = SimpleStruct(x: 2, y: 3)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNil_withSelfDescriptionType(){
        let optionalValue : SimpleStructWithDescription? = SimpleStructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertEquel(){
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
        
    }
    
    func test_assertEquel_withOptional(){
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    func test_floatingPointDanger(){
        let result = 0.1 + 0.2;
        XCTAssertEqual(result, 0.3)
    }
    
    func test_floatingPointFixed(){
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.000001)
    }
    
}
