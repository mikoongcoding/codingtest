//
//  24265.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/8/24.
//

import Foundation
/**
MenOfPassion(A[], n) {
    sum <- 0;
    for i <- 1 to n - 1
        for j <- i + 1 to n
            sum <- sum + A[i] × A[j]; # 코드1
    return sum;
}
 
 func MenOfPassion(A: [Int], n: Int) -> Int {
     var sum = 0
     for i in 1..<n { // 0...(n-1)
         for j in (i + 1)...n { // i가 커질수록 반복횟수 줄어든다
             sum += A[i] * A[j] // 코드1
         }
     }
     return sum
 }
 */

func tftsfive() {
    //    let a: [Int] = [1,2,3,4,5,6,8,9,4,5,1,2,3,4,5,6,8,9,4,5]
    //    let input = readLine()
    //
    //    if let input = input {
    //        let n = Int(input)!
    //        var god = 0
    //        var sum = 0
    //            for i in 1..<n {
    //                for j in (i + 1)...n {
    //                    sum += a[i] * a[j] // 코드1
    //                    god += 1
    //                    print("수행횟수: \(god)")
    //                }
    //            }
    //        print(sum)
    //    }
    
    let input = readLine()
    
    if let input = input {
        let n = Int(input)!
        let tmp = n*n - n // n(n-1)
        
        print(tmp/2)
    }
    print(2)
}
