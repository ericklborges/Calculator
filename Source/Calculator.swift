//
//  Calculator.swift
//  Calculator
//
//  Created by erick.borges on 12/11/21.
//

import Foundation

class Calculator {

    private(set) var result: Double = 0

    // MARK: - Operations

    func sum(_ lhs: Double, _ rhs: Double) {
        result = lhs + rhs
    }

    func subtract(_ lhs: Double, _ rhs: Double) {
        result = lhs - rhs
    }

    func multiply(_ lhs: Double, _ rhs: Double) {
        result = lhs * rhs
    }

    func divide(_ lhs: Double, _ rhs: Double) {
        if lhs == 0 && rhs == 0 {
            // 0 / 0 = 1
            result = 1

        } else if lhs == 0 {
            // 0 / X = zero
            result = .zero

        } else if rhs == 0 {
            // X / 0 = infinito
            result = .infinity

        } else {
            result = lhs / rhs
        }
    }

    // MARK: - Challenge Operations

    func power(_ lhs: Double, _ rhs: Int) {
        if rhs == 0 {
            // X^0 = 1
            result = 1

        } else if lhs == 0 {
            // 0^-Y = infinito
            result = .infinity

        } else if rhs < 0 {
            // X^-Y = (1 / X)^Y
            result = Array(repeating: 1/lhs, count: abs(rhs)).reduce(1, *)

        } else {
            result = Array(repeating: lhs, count: rhs).reduce(1, *)
        }
    }
}
