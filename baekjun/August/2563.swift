//
//  2563.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func tfsth() {
    // https://datalabbit.tistory.com/141

    let count = Int(readLine()!)!

    var filledArea = Set<[Int]>()
    /**
     Set 사용:
         •    filledArea를 Set으로 선언하여 좌표 쌍을 중복 없이 저장합니다. Set은 중복된 값을 허용하지 않기 때문에, 겹치는 영역이 자동으로 제거됩니다.
         •    사각형을 그릴 때마다 (i, j) 좌표 쌍을 Set에 삽입합니다.
     
     시간 복잡도:
         •    Set의 삽입 작업은 평균적으로 O(1) 시간이 걸리므로, 전체 시간 복잡도는 여전히 O(n)입니다. 이는 주어진 문제에서 매우 효율적입니다.

     */
    for _ in 0..<count {
        let xy = readLine()!.split(separator: " ").compactMap { Int($0) }
        let (x, y) = (xy[0], xy[1])

        for i in x..<x+10 {
            for j in y..<y+10 {
                filledArea.insert([i, j])
            }
        }
    }

    print(filledArea.count)
    
    // # 2
//    let count2 = Int(readLine()!)!
//
//    // 좌표를 저장할 배열
//    var xys = [[Int]]()
//
//    // 사각형의 좌표를 입력받아 저장
//    for _ in 0..<count {
//        let xy = readLine()!.split(separator: " ").compactMap { Int($0) }
//        xys.append(xy)
//    }
//
//    // 100x100 배열 초기화
//    var whiteboard = Array(repeating: Array(repeating: 0, count: 100), count: 100)
//
//    // 사각형 그리기
//    for xy in xys {
//        let (x, y) = (xy[0], xy[1])
//        for i in x..<x+10 {
//            for j in y..<y+10 {
//                whiteboard[i][j] = 1
//            }
//        }
//    }
//
//    // 1로 채워진 영역의 개수 계산 및 출력
//    let filledCount = whiteboard.flatMap { $0 }.filter { $0 == 1 }.count
//    print(filledCount)
    
    /**
     for row in whiteboard {
         for value in row {
             if value == 1 {
                 count += 1
             }
         }
     }
     */
    
    
    // #1
//    let count1 = Int(readLine()!)!
//    
//    var xys = [[Int]]()
//    for _ in 0..<count {
//        if let input = readLine() {
//            let xy = input.split(separator: " ").compactMap{ Int($0) }
//            xys.append(xy)
//        }
//    }
//    var whiteboard = Array(repeating: Array(repeating: 0, count: 100), count: 100)
//    for xy in xys {
//        let x = xy[0]
//        let y = xy[1]
//        for i in x..<x+10 {
//            for j in y..<y+10 {
//                whiteboard[i][j] = 1
//            }
//        }
//    }
//    
//    print(whiteboard.flatMap{
//        $0}.filter{
//        $0 == 1
//        }.count)
}
