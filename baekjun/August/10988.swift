//
//  10988.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/13/24.
//

import Foundation

func oznee() {
    if let word = readLine() {
        let isPalindrome = word == String(word.reversed())
        print(isPalindrome ? "1" : "0")
    }
    
    // # 2
    if let word = readLine() {
        let wordArr = Array(word)
        var isP = true
        
        for i in 0..<wordArr.count / 2 { // ⭐️ 문자열의 절반만 비교하면 된다
            if wordArr[i] != wordArr[wordArr.count - 1 - i]  {
                isP = false
                break
            }
        }
        
        print(isP ? "1" : "0")
    }
    
    // # me
//    if let word = readLine() {
//        let wordArr = word.map {String($0)}
//        var isP = false
//        for i in 0..<wordArr.count {
//            if wordArr[i] == wordArr[wordArr.count - 1 - i]  {
//                isP = true
//            } else {
//                isP = false
//                break
//            }
//        }
//        print(isP ? "1": "0")
//    }
}
