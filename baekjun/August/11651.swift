//
//  11651.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/14/24.
//

import Foundation

func oosixfo() {
    let count = Int(readLine()!)!

    var coordinates = [(x: Int, y: Int)]() // 튜플 생성
    
    for _ in 0..<count {
        let input = readLine()!.split(separator: " ").compactMap { Int($0) }
        if input.count == 2 {
            coordinates.append((x: input[0], y: input[1]))
        }
    }

    let sortedCoordinates = coordinates.sorted {
        if $0.y == $1.y {
            return $0.x < $1.x
        }
        return $0.y < $1.y
    }

    sortedCoordinates.forEach { coordinate in
        print("\(coordinate.x) \(coordinate.y)")
    }
}
