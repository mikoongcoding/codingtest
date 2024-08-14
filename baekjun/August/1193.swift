//
//  1193.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/12/24.
//

import Foundation

/**
 규칙을 찾아라
 */
func oonth() {
    if let input = readLine(), let n = Int(input) {
        var num = n
        // 분모는 짝수 순방향, 홀수 역방향
        // 분자는 짝수 역방향, 홀수 순방향
        /**
         짝수 라인 : 분모가 1씩 늘어나고 분자가 1씩 줄어듦
         홀수 라인 : 분자가 1씩 늘어나고 분모가 1씩 줄어듦
         */
        
        // n번째 분수를 찾아야 함
        
        var line = 1
        var a = 0
        var b = 0
        while num > line {
            num -= line
            line += 1
        }
        
        if line % 2 == 0 {
            a = num
            b = line - num + 1
            
        } else {
            a = line - num + 1
            b = num
        }
        
        print("\(a)/\(b)")
    }
}
