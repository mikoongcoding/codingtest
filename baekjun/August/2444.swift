//
//  2444.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func twofff() {
    
    if let n = Int(readLine()!) {
        
        for i in 1..<n {
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: 2*i - 1)
            print(spaces + stars)
        }
        
        for i in stride(from: n, through: 1, by: -1) {
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: 2*i - 1)
            print(spaces + stars)
        }
        
    }
}
