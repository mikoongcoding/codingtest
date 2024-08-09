//
//  19532.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/8/24.
//

import Foundation

// 연립방정식

func onftht() {
    
    if let input = readLine() {
        //        let inputs = input.split(separator: " ").map{ Int(String($0))!}
        let inputs = input.split(separator: " ").compactMap { Int($0) }

        for i in -999...999 {
            for j in -999...999 {
                if (inputs[0] * i + inputs[1] * j == inputs[2]) && (inputs[3] * i + inputs[4] * j == inputs[5]) {
                    print(i, j)
                }
            }
        }
    }
}

//        var x: Int = -999
//        var y: Int = -999
//
//        for i in -999 ... 999 {
//            for j in -999 ... 999 {
//                if i == (inputs[2] - inputs[1]*j) / inputs[0]
//                && j == (inputs[2] - inputs[0]*i) / inputs[1]
//                && i == (inputs[5] - inputs[4]*j) / inputs[3]
//                && j == (inputs[5] - inputs[3]*i) / inputs[4] {
//                    x = i
//                    y = j
//                }
//            }
//        }
//        print("\(x) \(y)")
        

/**
 a, b, c, d, e, f
 0, 1, 2, 3, 4, 5
 *ax + by = c*
 ax = c - by
 x = (c - by) / a
 y = (c - ax) / b
 
 *dx + ey = f*
 x = (f - ey) / d
 y = (f - dx) / e
 
 */
