import UIKit
/*
 1.
 if - 다른 언어 if문과 다르게 실행될 코드가 한 줄이라고 해도 스위프트에서는 괄호가 필수이다.
 if 조건식 {
    // 코드
 }
 
 2.
 if ... else
 let x = 10

 if x > 9 {
     print("x is greater than 9!")
 } else {
     print("x is less than 9!")
 }
 
 3.
 guard - 스위프트 2에서 도입된 기능 guard 구문은 불리언 표현식을 포함하며, true일 때만 guard 구문 다음에 위치한 코드가 실행된다. guard 구문은 불리언 표현식이 false일 때 수행될 else 절을 반드시 포함해야 한다. else 절의 코드는 반드시 현재의 코드 흐름에서 빠져나가는 구문(return, break, continue, throw)을 포함해야 한다.
 
 guard <조건문(불리언 표현식)> else {
    // 조건이 false일 때 실행될 코드
    <종료 구문>
 }
 
 // 조건문이 true일 때 실행될 코드
 guard 구문은 특정 조건을 만족하지 않은 경우에 현재의 함수 또는 반복문에서 빠져나올 수 있게 해준다.
 
 var value1: Int?
 value1 = 10

 func guardTest(value: Int?) {
     guard let number = value, number < 10 else {
         print("Number is too high")
         return
     }
     
     let result = number * 10
     print(result)
 }

 guardTest(value: value1)
 
 guardTest 함수는 옵셔널 형태의 정숫값을 매개변수로 받는다. guard 구문은 값을 언래핑하기 위해 옵셔널 바인딩을 사용하며, 그 값이 10보다 적은지를 판단한다. 값을 언래핑할 수 없거나 언래핑한 값이 9보다 큰 경우, else 절이 실행되어 에러 메시지를 출력하고 return문으로 함수를 빠져나간다.
 옵셔널이 10보다 작은 값을 가지고 있다면 guard구문 다음에 있는 코드가 실행되어 그 값에 10을 곱한 값이 출력된다. 여기서 중요한 점은 언래핑된 number 변수는 guard 구문 밖의 코드에서도 유효하다는 것이다. 반면 if 구문 내에서 언래핑된 변수는 if 구문에서만 유효하다.
 
 */

let x = 10

if x > 9 {
    print("x is greater than 9!")
} else {
    print("x is less than 9!")
}

var value1: Int?
value1 = 10

func guardTest(value: Int?) {
    guard let number = value, number < 10 else {
        print("Number is too high")
        return
    }
    
    let result = number * 10
    print(result)
}

guardTest(value: value1)

