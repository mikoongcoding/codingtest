//
//  8393.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/8/24.
//

import Foundation

func etnt() {
    if let input = readLine(), let n = Int(input) {
        var sum = 0
        for i in 1 ... n {
            sum += i
        }
        print(sum)
    }
}
