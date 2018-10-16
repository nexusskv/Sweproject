//
//  main.swift
//  SWEproject
//
//  Created by Rost on 10/16/18.
//  Copyright © 2018 Rost Gress. All rights reserved.
//

import Foundation


/*
 ---> Function for show current number from Incrementor
 */
func testGetCurrentValue(_ incrementor: Incrementor) {
    print("Current number -> ", incrementor.getNumber())
}


/*
 ---> Function for call Incrementor functions
 */
func testIncrementValue(_ limit: Int, incrementor: Incrementor) {
    if limit > 0 {
        for _ in 0..<limit {
            incrementor.incrementNumber()
            testGetCurrentValue(incrementor)
        }
    } else {
        print("MAX number is Null or negative")
        printMaxNumber(incrementor)
    }
}


/*
 ---> Show value of MAX number in console
 */
func printMaxNumber(_ incrementor: Incrementor) {
    print("MAX number -> ", incrementor.maxNumber)
}


/*
 ---> Function for run custom test cases
 */
func runTestIncrement(_ cases: [Int]) {
    for max in cases {
        let incrementor = Incrementor()
        incrementor.maxNumber = max
        printMaxNumber(incrementor)
        testGetCurrentValue(incrementor)
        testIncrementValue(incrementor.maxNumber, incrementor: incrementor)
        print("<-======================================->")
    }
}


// Array of custom test cases for check work Incrementor
let testCases = [-1, 0, 5, 10, 0, 150, 53, 800, 20, -50, 5, 10, -30, 10000, 200, 350]

// Run test cases
runTestIncrement(testCases)
