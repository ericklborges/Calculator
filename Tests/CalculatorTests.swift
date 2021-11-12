//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by erick.borges on 12/11/21.
//

import XCTest

@testable import Calculator

class CalculatorTests: XCTestCase {

    var sut: Calculator! // System Under Test

    override func setUp() {
        super.setUp()
        sut = Calculator()
    }

    // MARK: - Initial State

    func test_initial_result() {
        // Given (dado que)
        sut = Calculator()

        // Then (então)
        XCTAssertEqual(sut.result, 0)
    }

    // MARK: - Operations

    func test_operation_sum() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.sum(10, 5)

        // Then (então)
        XCTAssertEqual(sut.result, 15)
    }

    func test_operation_subtract() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.subtract(10, 5)

        // Then (então)
        XCTAssertEqual(sut.result, 5)
    }

    func test_operation_multiply() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.multiply(10, 5)

        // Then (então)
        XCTAssertEqual(sut.result, 50)
    }

    func test_operation_divide() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.divide(10, 5)

        // Then (então)
        XCTAssertEqual(sut.result, 2)
    }

}
