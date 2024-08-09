//
//  24266.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/8/24.
//

import Foundation

/**
 var sum: Int = 0
 if let input = readLine(), let n = Int(input) {
     for i in 1 ..< n {
         for j in 1 ..< n {
             for k in 1 ..< n {
                 sum += 1 // 수행횟수
                 print(sum)
             }
         }
     }
 }
 */

func tfourtss() {
    // O(n^3)
    if let input = readLine(), let n = Int(input) {
        print(n * n * n)
        print(3)
    }
}
