//
//  1008.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/19/24.
//

import Foundation

func onezzeight() {
    if let input = readLine() {
        let twoNumber = input.split(separator: " ").compactMap{Int($0)}
        if twoNumber.count == 2 {
            print(Double(twoNumber[0])/Double(twoNumber[1]))
        }
    }
    let inputs = readLine()!.split(separator: " ").compactMap{Int($0)}
}
