import UIKit
/*
 1.
 for-in - 어떤 컬렉션이나 숫자 범위에 포함된 일련의 항목들을 반복하는 구문, 배열이나 딕셔너리 같은 컬렉션을 가지고 작업할때 특히 더 유용하다.
 
 for 상수면 in 컬렉션 또는 범위 {
    //실행될 코드
 }
 
 for index in 1...5 {
     print("value of index is \(index)")
 }
 
 현재 항목에 대한 참조체를 저장하기 위해서 상수명을 반드시 선언해야 하는 것은 아니다. 현재 항목에 대한 참조체가 for 반복문 안에서 필요하지 않다면 _(밑줄)문자로 대체할 수 있다.
 var count = 0
 
 for _ in 1...5 {
    // 현재 값에 대한 참조체가 필요없다.
    count += 1
 }
 
 2.
 while - for 반복문은 프로그램 내에서 몇 번 반복해야 하는지 알고 있을 때 유용한다. 하지만, 어떤 조건에 만족할 때까지 반복해야 하는 코드가 있는데 그 조건을 충족할 때까지 몇 번을 반복해야 하는지르 알 수 없는 경우가 있을때 while문을 사용하면 편리하다.
 
 while 조건문 {
    // 실행될 코드
 }
 
 var count = 0
 while count < 10 {
     count += 1
 }
 print(count)

 
 3.
 repeat ... while - 다른 프로그래밍을 do while문과 같다.
 
 repeat {
    // 실행 코드
 } while 조건식
 
 var i = 10
 print(i)
 repeat {
     i -= 1
 } while(i > 0)
 print(i)

 4.
 continue - 반복문의 나머지 코드를 건너뛰고 반복문의 처음으로 다시 돌아가게 한다.
 var i2 = 1

 while i2 < 20 {
     i2 += 1
     if (i2 % 2 != 0) {
         continue
     }
     print("i2 = \(i2)")
 }
 
 */

for index in 1...5 {
    print("value of index is \(index)")
}

var count = 0
while count < 10 {
    count += 1
}
print(count)

var i = 10
print(i)
repeat {
    i -= 1
} while(i > 0)
print(i)

var i2 = 1

while i2 < 20 {
    i2 += 1
    if (i2 % 2 != 0) {
        continue
    }
    print("i2 = \(i2)")
}
