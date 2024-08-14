//
//  13241.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/14/24.
//

import Foundation

func ottfouro() {
    
    if let input = readLine() {
        let inputs = input.split(separator: " ").map{ Int(String($0))!}
        let (a, b) = (inputs[0], inputs[1])
        
        // 1. 최대공약수 구하기
        var x = a
        var y = b
        while y != 0 {
            let temp = y
            y = x % y
            x = temp
        }
        
        print(abs(a * b)/x)
    }
}

/**
 유클리드 호제법을 활용하여 두 수의 최소공배수(LCM)를 구하려면, 먼저 최대공약수(GCD)를 계산한 다음, 다음 공식을 사용합니다:


 \text{LCM}(a, b) = \frac{|a \times b|}{\text{GCD}(a, b)}


 유클리드 호제법을 활용한 최대공약수(GCD) 구하기:

 유클리드 호제법은 두 수 a와 b의 최대공약수를 구하는 방법으로, 다음과 같이 작동합니다:

     1.    b가 0이 될 때까지, a와 b를 나눈 나머지로 a를 업데이트합니다.
     2.    마지막에 a가 최대공약수(GCD)가 됩니다.
 */

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}

//if let input = readLine() {
//    let numbers = input.split(separator: " ").compactMap { Int($0) }
//    if numbers.count == 2 {
//        print(lcm(numbers[0], numbers[1]))
//    }
//}
