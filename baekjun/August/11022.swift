//
//  11022.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/12/24.
//

import Foundation

func ooztt() {
    if let testcaseCount = Int(readLine()!) {
        var array = [[Int]]()
        
        for _ in 0..<testcaseCount {
            let arr = readLine()!.split(separator: " ").compactMap { Int($0) }
            array.append(arr)
        }
        
        for (index, arr) in array.enumerated() {
            print("Case #\(index + 1): \(arr[0]) + \(arr[1]) = \(arr[0] + arr[1])")
        }
    }
    
//    if let input = readLine(), let testcaseCount = Int(input) {
//        
//        var array = [[Int]]()
//        for _ in 0..<testcaseCount {
//            let arr = readLine()!.split(separator: " ").map {Int($0)!}
//            array.append(arr)
//        }
//        var i = 1
//        array.forEach { arr in
//            print("Case #\(i): \(arr[0]) + \(arr[1]) = \(arr[0] + arr[1])")
//            i += 1
//        }
//        
//    }
}
