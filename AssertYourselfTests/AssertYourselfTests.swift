//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by HAQQQABD on 23/07/2023.
//

import XCTest
@testable import AssertYourself

final class AssertYourselfTests: XCTestCase {
    
    func test_fail_withSimpleMessage(){
       XCTFail("We have a problem")
    }

    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The Answer to the Great Question is \(theAnswer)")
    }
}
