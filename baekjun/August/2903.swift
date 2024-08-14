//
//  2903.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/12/24.
//

import Foundation

func tnzth() {
    
//    if let input = readLine(), let n = Int(input) {
//        var lectangle = 1
//        //2를 n번 곱해야 함 = 1열 사각형 갯수
//        for _ in 0..<n
//        {
//            lectangle *= 2
//        }
//        // 점 갯수
//        var dots = (lectangle + 1) * (lectangle + 1)
//
//        print(dots)
//        
//        
//    }
    
    if let input = readLine(), let n = Int(input) {
        // 2를 n번 곱한 값을 계산
        let rectangleCount = Int(pow(2.0, Double(n)))
        
        // 점의 갯수 계산
        let dotCount = (rectangleCount + 1) * (rectangleCount + 1)

        print(dotCount)
    }
}
