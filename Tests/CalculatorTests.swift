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

    func test_operation_divide_Zero_and_Zero() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.divide(.zero, .zero)

        // Then (então)
        XCTAssertEqual(sut.result, 1)
    }

    func test_operation_divide_zero_and_X() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.divide(0, 5)

        // Then (então)
        XCTAssertEqual(sut.result, 0)
    }

    func test_operation_divide_X_and_Zero() {
        // Given (dado que)
        sut = Calculator()

        // When (quando)
        sut.divide(10, 0)

        // Then (então)
        XCTAssertEqual(sut.result, .infinity)
    }

    // MARK: - Challenge Operations

    func test_operation_power_of_zero() {
        sut = Calculator()

        sut.power(2, 0)

        XCTAssertEqual(sut.result, 1)
    }

    func test_operation_power_zero_of_any() {
        sut = Calculator()

        sut.power(0, 5)

        XCTAssertEqual(sut.result, .infinity)
    }

    func test_operation_power_of_negative() {
        sut = Calculator()

        sut.power(2, -3)

        XCTAssertEqual(sut.result, 0.125)
    }

    func test_operation_power_of_positive() {
        sut = Calculator()

        sut.power(2, 3)

        XCTAssertEqual(sut.result, 8)
    }
}
