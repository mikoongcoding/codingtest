//
//  1269.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/14/24.
//

import Foundation

func ontwosn() {
    
    let _ = readLine()!

    let a = Set(readLine()!.split(separator: " ").compactMap { Int($0) })
    let b = Set(readLine()!.split(separator: " ").compactMap { Int($0) })

    let difference = a.subtracting(b).count + b.subtracting(a).count
    print(difference)
    
    // 메모리 초과
//    let count = readLine()!.split(separator: " ").compactMap{ Int($0) }
//    
//    let a = readLine()!.split(separator: " ").compactMap{ Int($0) }
//    let b = readLine()!.split(separator: " ").compactMap{ Int($0) }
//    
//    print(a.difference(from: b).count)
}
