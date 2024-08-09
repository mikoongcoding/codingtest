//
//  25304.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/9/24.
//

import Foundation

func tfthzf() {
    var sum = 0
    var count = 0
    if let input = readLine(), let n = Int(input) {
        sum = n
    }
    
    if let input = readLine(), let n = Int(input) {
        count = n
    }
    
    var result = 0
    for _ in 0..<count {
        
        if let input = readLine() {
            let coordinates = input.split(separator: " ").compactMap { Int($0) }
            result += (coordinates[0] * coordinates[1])
        }
        
    }
    
    print(sum == result ? "Yes": "No")
}
