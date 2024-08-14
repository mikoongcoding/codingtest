//
//  2745.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func tsfourfive() {
    if let input = readLine() {
        let inputs = input.split(separator: " ")
        
        print(Int(inputs[0], radix: Int(inputs[1])!)!)
    }
}
