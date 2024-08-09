//
//  9506.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/9/24.
//

import Foundation

// 약수 중 완전수 찾아내기

func nfzs() {
    var inputs: [Int] = []
    var lastInput: Int = 0
    while lastInput != -1 {
        lastInput = Int(readLine()!)!
        if lastInput != -1 {
            inputs.append(lastInput)
        }
        
    }
    
    inputs.forEach{ num in
        var factors: [Int] = []
        
        for i in stride(from: 1, to: num, by: 1) {
            if num % i == 0 { factors.append(i) }
        }
        if num == factors.reduce(0, +) {
            print("\(num) = ", terminator: "")
            for s in 0..<factors.count-1 {
                print("\(factors[s]) + ", terminator: "")
            }
            print("\(factors.last!)")
            
        } else {
            print("\(num) is NOT perfect.")
        }
        
    }
}

/**
 개선 사항:

     1.    입력 처리 방식:
     •    사용자가 입력한 값을 Int로 변환할 때 옵셔널 바인딩(if let)을 사용해 안전하게 처리합니다.
     •    -1이 입력되면 루프를 종료하는 방식으로 변경했습니다. 이로 인해 무한 루프를 방지할 수 있습니다.
     2.    반복 범위 최적화:
     •    for i in 1..<(num / 2 + 1)로 반복 범위를 최적화했습니다. 완전수의 약수는 자신을 제외하고 num/2까지만 존재하기 때문에, 전체 범위를 순회할 필요가 없습니다.
     3.    출력 개선:
     •    factors 배열을 map과 joined를 사용하여 한 줄로 출력할 수 있도록 하여 코드 가독성을 높였습니다.
     •    완전수와 그 약수를 보기 쉽게 출력합니다.

 이렇게 개선된 코드는 더 효율적이고 안전하게 동작하며, 사용자에게 보다 명확한 결과를 제공합니다.
 */
func nfzs2() {
    var inputs: [Int] = []

    while true {
        if let input = readLine(), let number = Int(input), number != -1 { // ⭐️
            inputs.append(number)
        } else {
            break
        }
    }

    inputs.forEach { num in
        var factors: [Int] = []
        
        for i in 1...(num / 2) { // ⭐️
            if num % i == 0 {
                factors.append(i)
            }
        }
        
        let sumOfFactors = factors.reduce(0, +)
        
        if num == sumOfFactors {
            let factorsString = factors.map { String($0) }.joined(separator: " + ") // ⭐️
            print("\(num) = \(factorsString)")
        } else {
            print("\(num) is NOT perfect.")
        }
    }
}
