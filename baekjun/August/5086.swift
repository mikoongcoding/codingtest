//
//  5086.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/7/24.
//

import Foundation

func fzes() { //5086 five zero eight six
    var str: String = ""

    while let i = readLine() {
        if i == "0 0" {
            break
        }
        str.append("\(i)\n")
        
    }

        let lines = str.split(separator: "\n")
        let pairs = lines.map{ $0.split(separator: " ").map{ Int(String($0))!} }
        pairs.forEach { pair in
            solution(pair[0], pair[1])
        }

    func solution(_ a: Int, _ b: Int) {
        if b % a == 0 { print("factor")}
        else if a % b == 0 { print("multiple")}
        else { print("neither")}
    }

}
