//
//  1436.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/8/24.
//

import Foundation

func ofths() {
    if let input = readLine(), let n = Int(input) {
        var count = 1
        var title = 666
        
        while count != n {
            title += 1
            var temp = title
            
            // 간단한 방법으로 "666" 포함 여부를 확인
            while temp >= 666 {
                if temp % 1000 == 666 {
                    count += 1
                    break
                }
                temp /= 10
            }
        }
        
        print(title)
    }
}
/**
 "666" 패턴을 찾는 코드의 시간 복잡도를 분석해보겠습니다. 코드는 다음과 같습니다:

 ```swift
 if let input = readLine(), let n = Int(input) {
     var count = 1
     var title = 666
     
     while count != n {
         title += 1
         var temp = title
         
         // 간단한 방법으로 "666" 포함 여부를 확인
         while temp >= 666 {
             if temp % 1000 == 666 {
                 count += 1
                 break
             }
             temp /= 10
         }
     }
     
     print(title)
 }
 ```

 ### 시간 복잡도 분석

 1. **외부 while 루프 (`while count != n`)**
    - 이 루프는 n번째로 "666"을 포함하는 숫자를 찾을 때까지 실행됩니다. 따라서 이 루프의 반복 횟수는 n번입니다. 하지만 title의 증가 속도에 따라 다소 차이가 있을 수 있습니다.
    - n번 실행되므로 최악의 경우 시간 복잡도는 O(n)입니다.

 2. **내부 while 루프 (`while temp >= 666`)**
    - 이 루프는 각 title에 대해 "666"이 포함되어 있는지 확인합니다.
    - `temp`의 자릿수에 비례하여 실행됩니다. 자릿수가 k인 숫자는 k번 나눌 수 있습니다. 따라서 한 title당 내부 while 루프의 시간 복잡도는 O(log(title))입니다.

 3. **숫자 검사 (`if temp % 1000 == 666`)**
    - 이 비교 연산은 상수 시간 O(1)에 실행됩니다.

 ### 최종 시간 복잡도

 외부 루프와 내부 루프를 합산하여 최종 시간 복잡도를 계산하면 다음과 같습니다:
 - 외부 while 루프: O(n)
 - 내부 while 루프: 각 title에 대해 O(log(title))

 따라서 전체 시간 복잡도는 각 반복에서 내부 루프가 실행되는 횟수에 따라 O(n * log(title))입니다.

 title이 커질수록 내부 루프가 더 자주 실행되므로, title의 크기가 외부 루프의 횟수(n)에 비례하여 증가한다고 가정할 때, title의 평균 크기는 n과 같은 크기 오더로 증가합니다. 그러므로 내부 루프의 평균 실행 시간도 O(log(n))이 됩니다.

 ### 최종 결론
 - 이 알고리즘의 최종 시간 복잡도는 O(n * log(n))입니다.

 이 시간 복잡도는 주어진 문제의 요구 사항을 충족할 만큼 효율적입니다. n이 매우 클 경우에도 적절한 성능을 보장할 수 있습니다.
 */
