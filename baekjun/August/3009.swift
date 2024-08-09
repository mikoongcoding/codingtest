//
//  3009.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/9/24.
//

import Foundation

func tznn() {
    var x = 0
    var y = 0

    for _ in 0..<3 {
        if let input = readLine() {
            let coordinates = input.split(separator: " ").compactMap { Int($0) }
            if coordinates.count == 2 {
                x ^= coordinates[0]
                y ^= coordinates[1]
            }
        }
    }

    print(x, y)
    
}

/**
 코드 설명:

     1.    XOR 연산:
     •    XOR(^) 연산의 특성을 이용합니다. 동일한 값을 XOR하면 0이 되고, 0과 어떤 값을 XOR하면 그 값이 그대로 남습니다. 따라서 세 개의 점의 좌표들을 XOR하면, 나머지 한 점의 좌표만 남게 됩니다.
     •    각 반복에서 입력받은 좌표를 x와 y에 XOR로 누적합니다. 최종적으로 남은 값이 직사각형의 나머지 한 점의 좌표가 됩니다.
     2.    입력 처리:
     •    이전과 마찬가지로 readLine(), split(separator: " "), compactMap { Int($0) }를 사용해 입력을 처리합니다.

 장점:

     •    효율성: XOR 연산은 O(1) 복잡도로 매우 빠르며, 이 방법은 각 좌표를 한 번씩만 처리하므로 매우 효율적입니다.
     •    간결성: 중복된 좌표를 찾기 위해 추가적인 배열이나 필터링이 필요 없으므로 코드가 훨씬 간결합니다.
 */
