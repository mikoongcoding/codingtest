//
//  25314.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/19/24.
//

import Foundation

func twofthofour() {
    
    if let input = readLine(), let n = Int(input) {
        let count = n / 4
        let longStrings = Array(repeating: "long", count: count)
        print("\(longStrings.joined(separator: " ")) int")
    }
}
