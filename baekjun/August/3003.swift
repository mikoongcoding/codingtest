//
//  3003.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func threezzthree() {
    let chessHorses = [1, 1, 2, 2, 2, 8]

    if let input = readLine() {
        let inputs = input.split(separator: " ").compactMap { Int($0) }
        let result = zip(chessHorses, inputs).map { $0 - $1 }
        print(result.map(String.init).joined(separator: " "))
    }
    
//    let chessHorses = [1, 1, 2, 2, 2, 8]
//    
//    if let input = readLine() {
//        let inputs = input.split(separator: " ").map{ Int(String($0))!}
//        
//        var result = [Int]()
//        for (index, horses) in inputs.enumerated() {
//            result.append(chessHorses[index]-horses)
//        }
//        print(result.map{String($0)}.joined(separator: " "))
//    }
}
