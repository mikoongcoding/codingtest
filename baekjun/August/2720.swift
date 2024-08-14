//
//  2720.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/12/24.
//

import Foundation

func tstz() {
    let testCaseCount = Int(readLine()!)!

    var testCases = [Int]()
    for _ in 0..<testCaseCount {
        let testcase = Int(readLine()!)!
        testCases.append(testcase)
    }

    testCases.forEach { amount in
        let quarters = amount / 25
        let dimes = (amount % 25) / 10
        let nickels = (amount % 25 % 10) / 5
        let pennies = amount % 25 % 10 % 5
        
        print("\(quarters) \(dimes) \(nickels) \(pennies)")
    }
//    let testCaseCount = Int(readLine()!)!
//    
//    var testCases: [Int] = []
//    for _ in 0..<testCaseCount {
//        var testcase = Int(readLine()!)!
//        testCases.append(testcase)
//    }
//    
//    testCases.forEach { c in
//        var testcase = c
//        var quarter = 0
//        var dime = 0
//        var nickel = 0
//        var penny = 0
//        if testcase >= 25 {
//            quarter = testcase / 25
//            testcase %= 25
//        }
//        if testcase >= 10 {
//            dime += testcase / 10
//            testcase %= 10
//        }
//        if testcase >= 5 {
//            nickel = testcase / 5
//            testcase %= 5
//        }
//        if testcase >= 1 {
//            penny = testcase
//            testcase %= 1
//        }
//        print("\(quarter) \(dime) \(nickel) \(penny)")
//    }
    
    
    
    
}
