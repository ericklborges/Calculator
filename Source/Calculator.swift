//
//  Calculator.swift
//  Calculator
//
//  Created by erick.borges on 12/11/21.
//

import Foundation

class Calculator {

    private(set) var result: Int = 0

    // MARK: - Operations

    func sum(_ lhs: Int, _ rhs: Int) {
        result = lhs + rhs
    }
}
