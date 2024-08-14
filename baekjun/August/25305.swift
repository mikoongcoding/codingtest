//
//  25305.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/14/24.
//

import Foundation

func tfivetzf() {
    let nk = readLine()!.split(separator: " ").compactMap { Int($0) }
    let k = nk[1]

    let scores = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted(by: >)

    print(scores[k - 1])
    
//    let nk = readLine()!.split(separator: " ").compactMap{Int($0)}
//    
//    var scores = readLine()!.split(separator: " ").compactMap{Int($0)}
//    
//    scores.sort()
//    scores.reverse()
//    print(scores[nk[1]-1])
    
                 
}
