//
//  ViewController.swift
//  testExample
//
//  Created by minmin on 2022/01/27.
//

import UIKit

protocol Calculator {
    func calculate(value1: Int, value2: Int) -> Int
    func calculationName() -> String
}

class ViewController: UIViewController {

    let printer = ResultPrinter()

    override func viewDidLoad() {
        super.viewDidLoad()
        printer.calculator = SubtractionCalculator()
        printer.printResult(value1: 3, value2: 8)
    }
}

class ResultPrinter {

//    var calculator: Calculator = AdditionalCalculator()
    var calculator = SubtractionCalculator()

    func printResult(value1: Int, value2: Int) {
        let name = calculator.calculationName()
        let result = calculator.calculate(value1: value1, value2: value2)

        print("\(value1)と\(value2)を\(name)した結果は\(result)です")
    }
}


// MARK: - AdditionalCalculator

class AdditionalCalculator: Calculator {

    func calculate(value1: Int, value2: Int) -> Int {
        return value1 + value2
    }

    func calculationName() -> String {
        return "足し算"
    }
}

// MARK: - SubtractionCalculator

class SubtractionCalculator: Calculator {
    func calculate(value1: Int, value2: Int) -> Int {
        return value1 - value2

    }

    func calculationName() -> String {
        return "引き算"
    }
}
