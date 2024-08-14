//
//  10813.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func ozeoth() {
    let nm = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    var result = [Int](1...nm[0]) // ⭐️ [1...nm[0]] 이렇게 초기화하니까 ClosedRange 타입이 돼서 swapAt에서 계속 에러남
    for _ in 0..<nm[1] {
        let way = readLine()!.split(separator: " ").compactMap { Int($0) }
        result.swapAt(way[0]-1, way[1]-1)
    }
    
    let resultString = result.map{String($0)}.joined(separator: " ")
    print(resultString)
}
