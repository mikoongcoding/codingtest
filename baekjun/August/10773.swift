//
//  10773.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/19/24.
//

import Foundation

func ozssthree() {
    if let input = readLine(), let n = Int(input) {
     
        var numbers = [Int]()
        for _ in 0..<n {
            let num = Int(readLine()!)!
            if num == 0 {
                numbers.removeLast()
            } else {
                numbers.append(num)
            }
            
        }
        
        print(numbers.reduce(0, +))
        
        
    }
}
