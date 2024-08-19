//
//  1934.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/16/24.
//

import Foundation

func onthreefour() {
    if let input = readLine(), let n = Int(input) {
        var inputs = [[Int]]()
        for _ in 0..<n {
            let ab = readLine()!.split(separator: " ").compactMap{ Int($0)}
            inputs.append(ab)
        }
        
        inputs.forEach{ ab in
                    var (a, b) = (ab[0], ab[1])
            
            var (x, y) = (a, b)
                   while y != 0 {
                       let temp = y
                       y = x%y
                       x = temp
                   }
                    
                    print("\(abs(a*b)/x)")
                   
                   }
    }
}
