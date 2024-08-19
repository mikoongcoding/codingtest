//
//  2738.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/19/24.
//

import Foundation

func tstheight() {
    
    let inputs = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (n, m) = (inputs[0], inputs[1])

    var aArray = Array(repeating: Array(repeating: 0, count: m), count: n)
    var bArray = Array(repeating: Array(repeating: 0, count: m), count: n)

    for i in 0..<n {
        let a = readLine()!.split(separator: " ").compactMap { Int($0) }
        aArray[i] = a
    }

    for i in 0..<n {
        let b = readLine()!.split(separator: " ").compactMap { Int($0) }
        bArray[i] = b
    }

    var result = Array(repeating: Array(repeating: 0, count: m), count: n)

    for i in 0..<n {
        for j in 0..<m {
            result[i][j] = aArray[i][j] + bArray[i][j]
            print(result[i][j], terminator: " ")
        }
        print("")
    }

}
