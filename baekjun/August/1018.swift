//
//  1018.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/11/24.
//

import Foundation
func advancedOzoe() {
    let firstInput = readLine()!.split(separator: " ").map { Int($0)! }
    let n = firstInput[0]
    let m = firstInput[1]
    
    var board: [[String]] = []
    
    for _ in 0..<n {
        let row = readLine()!.map { String($0) }
        board.append(row)
    }
    
    var minimumCase = 64
    
    for x in 0..<(n-7) {
        for y in 0..<(m-7) {
            var caseW = 0
            var caseB = 0
            
            for i in 0..<8 {
                for j in 0..<8 {
                    let current = board[x+i][y+j]
                    
                    // W로 시작하는 체스판일 때
                    if (i + j) % 2 == 0 {
                        if current != "W" { caseW += 1 }
                    } else {
                        if current != "B" { caseW += 1 }
                    }
                    
                    // B로 시작하는 체스판일 때
                    if (i + j) % 2 == 0 {
                        if current != "B" { caseB += 1 }
                    } else {
                        if current != "W" { caseB += 1 }
                    }
                }
            }
            // 최소값 갱신
            minimumCase = min(minimumCase, caseW, caseB)
        }
    }
    
    print(minimumCase)
}

func ozoe() {
    var n = 0, m = 0
    
    if let input = readLine() {
        let inputs = input.split(separator: " ").map{ Int(String($0))!}
        n = inputs[0]
        m = inputs[1]
    }
    
    var board: [[String]] = []
    
    for _ in 0 ..< n {
        if let row = readLine(){
            board.append(row.map{String($0)})
        } else {
            break
        }
    }
    
    // 색깔이 다르면 +1
    var caseW = 0
    var caseB = 0
    var minimumCase = 64
    
    for x in 0..<n-7 {
        for y in 0..<m-7 {
            
            for i in x..<x+8 {
                for j in y..<y+8 {
                    
                    // W로 시작할 때
                    if (i+j) % 2 == 0 { // 짝수 칸
                        if board[i][j] != "W" {
                            caseW += 1
                        }
                    } else { // 홀수 칸
                        if board[i][j] != "B" {
                            caseW += 1
                        }
                    }
                    
                    // B로 시작할 때
                    if (i+j) % 2 == 0 { // 짝수 칸
                        if board[i][j] != "B" {
                            caseB += 1
                        }
                    } else { // 홀수 칸
                        if board[i][j] != "W" {
                            caseB += 1
                        }
                    }
                    
                    
                }
            }
            if caseW < minimumCase || caseB < minimumCase {
                minimumCase = min(caseW, caseB)
            }
            caseW = 0
            caseB = 0
        }
    }
    print(minimumCase)
}
//https://rightbellboy.tistory.com/211
