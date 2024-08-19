//
//  14215.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/19/24.
//

import Foundation

func onefourtof() {
    /**
     삼각형을 만들기 위해 세 변의 길이가 a, b, c인 막대가 주어졌을 때, 삼각형의 성립 조건을 만족해야 합니다. 삼각형이 성립하기 위한 조건은 다음과 같습니다:

         •    가장 긴 변의 길이가 나머지 두 변의 길이의 합보다 작아야 합니다.
     */
    
    let lengths = readLine()!.split(separator: " ").compactMap{ Int($0)}
    var (a, b, c) = (lengths[0], lengths[1], lengths[2])
    
    var sorted = [a, b, c].sorted()
    while sorted[2] >= sorted[0] + sorted[1] {
        sorted[2] -= 1
    }
    
    let maxPerimeter = sorted.reduce(0, +)
    print(maxPerimeter)
}
