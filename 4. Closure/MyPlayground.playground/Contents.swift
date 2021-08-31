import UIKit
/*
 
 1.
 함수 - 특정 작업을 수행하기 위해 호출할 수 있게 이름 붙여진 코드 블록, 함수가 호출될 때 받게 되는 값을 매개변수라고 하고 실제로 함수가 호출되고 값이 전달된 시점에서는 인자라고 부른다.
 func <함수명> (<매개변수 이름>: <매개변수 타입>, ....) -> <반환 결과 타입> {
    실행 코드
 }
 
 종류
 
 // 함수
 func buildMessageFor(name: String, count: Int) -> String {
     return "\(name)m you are customer number \(count)"
 }

 print(buildMessageFor(name: "hyeonseong", count: 202011609))

 // 반환 구문이 한 줄이라면 return 생략 가능
 func buildMessageFor(name: String, count: Int) -> String {
     "\(name)m you are customer number \(count)"
 }

 print(buildMessageFor(name: "hyeonseong", count: 202011609))
 let message = buildMessageFor(name: "h1", count: 2323)
 _ = buildMessageFor(name: "h2", count: 3232)


 // 외부 매개변수명을 _ 로 주어 호출할 때 생략할 수 있음
 func buildMessageFor2(_ name: String, _ count: Int) -> String {
     "\(name)m you are customer number \(count)"
 }

 let message2 = buildMessageFor2("h3", 43434)
 print(message2)


 // 외부 매개변수 명을 지정해 호출할 때 해당 변수명을 사용 할 수 있음
 func buildMessageFor3(userName name: String, userCount count: Int) -> String {
     "\(name)m you are customer number \(count)"
 }

 let message3 = buildMessageFor3(userName: "h4", userCount: 5454)
 print(message3)


 // default 매개변수
 func buildMessageFor4(_ name: String = "Custom", count: Int) -> String {
     return "\(name), you are custom number \(count)"
 }

 let message4 = buildMessageFor4(count: 100)


 // 여러 결괏값 반환 - 결괏값들을 튜플로 래핑하면 여러 개의 결괏값을 함수가 반환할 수 있다.
 func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
     let yards = length * 0.0277777
     let centimeters = length * 2.54
     let meters = length * 0.00254
     return (yards, centimeters, meters)
 }

 let lengthTuple = sizeConverter(20)
 print(lengthTuple.yards)
 print(lengthTuple.centimeters)
 print(lengthTuple.meters)


 // 가변개수 매개변수
 func displayString(_ strings: String...) {
     for string in strings {
         print(string)
     }
 }

 displayString("one", "two", "three", "four")


 // 매개변수인 함수 - 함수가 데이터 타입처럼 취급할 수 있어 함수를 상수나 변수에 할당하는 것도 가능하다.
 func inchesToFeer(_ inches: Float) -> Float {
     return inches * 0.083333
 }

 let toFeet = inchesToFeer
 let result = toFeet(10)
 print(result)

 
 2.
 클로저 - 클로저 표현식은 이름을 갖지 않으며, 매개변수와 반환 타입은 괄호 안에 포함되고, 클로저 표현식 코드의 시작을 가리키기 위하여 in 키워드를 사용한다. 함수는 이름이 있는 클로저 표현식이다.
 {(<매개변수 이름>: <매개변수 타입>, <매개변수 이름>: <매개변수 타입>, ...) -> <반환 타입> in
    // 클로저 표현식
 }
 
 // 클로저
 let multiply = {(_ val1: Int, _ val2: Int) -> Int in
     return val1 * val2
 }

 let result2 = multiply(10, 20)

 
 */

// 반환 구문이 한 줄이라면 return 생략 가능
func buildMessageFor(name: String, count: Int) -> String {
    "\(name)m you are customer number \(count)"
}

print(buildMessageFor(name: "hyeonseong", count: 202011609))
let message = buildMessageFor(name: "h1", count: 2323)
_ = buildMessageFor(name: "h2", count: 3232)


// 외부 매개변수명을 _ 로 주어 호출할 때 생략할 수 있음
func buildMessageFor2(_ name: String, _ count: Int) -> String {
    "\(name)m you are customer number \(count)"
}

let message2 = buildMessageFor2("h3", 43434)
print(message2)


// 외부 매개변수 명을 지정해 호출할 때 해당 변수명을 사용 할 수 있음
func buildMessageFor3(userName name: String, userCount count: Int) -> String {
    "\(name)m you are customer number \(count)"
}

let message3 = buildMessageFor3(userName: "h4", userCount: 5454)
print(message3)


// default 매개변수
func buildMessageFor4(_ name: String = "Custom", count: Int) -> String {
    return "\(name), you are custom number \(count)"
}

let message4 = buildMessageFor4(count: 100)


// 여러 결괏값 반환 - 결괏값들을 튜플로 래핑하면 여러 개의 결괏값을 함수가 반환할 수 있다.
func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
    let yards = length * 0.0277777
    let centimeters = length * 2.54
    let meters = length * 0.00254
    return (yards, centimeters, meters)
}

let lengthTuple = sizeConverter(20)
print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)


// 가변개수 매개변수
func displayString(_ strings: String...) {
    for string in strings {
        print(string)
    }
}

displayString("one", "two", "three", "four")


// 매개변수인 함수 - 함수가 데이터 타입처럼 취급할 수 있어 함수를 상수나 변수에 할당하는 것도 가능하다.
func inchesToFeer(_ inches: Float) -> Float {
    return inches * 0.083333
}

let toFeet = inchesToFeer
let result = toFeet(10)
print(result)


// 클로저
let multiply = {(_ val1: Int, _ val2: Int) -> Int in
    return val1 * val2
}

let result2 = multiply(10, 20)
