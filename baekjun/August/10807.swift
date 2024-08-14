//
//  10807.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func ozezs() {
    let _ = readLine()!
    
    if let input = readLine(), let v = readLine() {
        let array = input.split(separator: " ")
        print(array.filter { return $0 == v}.count)
    }
}
