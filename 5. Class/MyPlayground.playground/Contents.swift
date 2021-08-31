import UIKit
/*
 1.
 객체 - 객체는 소프트웨어 애플리케이션을 구축하는 블록으로 쉽게 사용하고 재사용할 수 있는 독립적인 기능 모듈이다. 작업ㅇ르 수행하기 위한 객체나 인스턴스에 접근되고 호출되는 속성(property)과 함수(method)로 객체가 구성된다. 객체를 구성하는 데이터 변수와 함수를 포괄적으로 클래스 멤버라고 한다.
 객체지향 프로그래밍의 핵심 목적은 데이터 캡슐화이다. 클래스에 저장되고 접근될 수 있는 데이터는 오직 해당 클래스 내에 정의된 메서드만을 통해서 되는 것이고 클래스 내의 캡슐화된 데이터를 프로퍼티 또는 인스턴스 변수라고 한다.
 
2.
 클래스 - 클래스는 객체를 만드는 설계도이다. 예를 들어 함수들이 무엇을 할 것이고 어떤 프로퍼티들이 존재할지 등을 작성한다.
 
 class 클래스 이름: 부모 클래스 {
    // 프로퍼티
    // 인스턴스 메서드
    // 타입 메서드
 }
 
 3.
 self - 스위프트 self는 프로퍼티와 메서드에 대한 참조를 디폴트로 간주하기 때문에 self를 생략할 수 있는 경우가 많다.
 하지만 프로퍼티나 메서드를 클로저 표현식 내에서 참조할 경우 꼭 self를 써줘야 한다.
 
 document?.openWithCompletionHandler({(success: Bool) -> Void in
    if success {
        self.ubiquityURL = resultURL
    }
 })
 
 4.
 프로토콜 - 클래스가 충족해야 하는 최소한의 요구하상을 정의하는 규칙들의 집합을 프로토콜(protocol)이라고 한다. 프로토콜은 protocol 키워드를 이용하여 선언되며, 클래스가 반드시 포함해야 하는 메서드와 프로퍼티를 정의한다. 어떤 클래스가 프로토콜을 채택했으나 모든 프로콜의 요구사항을 충족하지 않는다면, 그 클래스가 해당 프로토콜을 따르지 않는다는 에러가 발생한다. (자바의 추상 클래스(abstract class)와 같다)
 
 // 프로토콜

 protocol MessageBuilder {
     var name: String {get}
     func buildMessage() -> String
 }

 class MyClass2: MessageBuilder {
     var name: String
     
     init(name: String) {
         self.name = name
     }
     
     func buildMessage() -> String {
         "Hello " + name
     }
 }

 */

class BankAccount {
    // 저장 프로퍼티
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    // 연산 프로퍼티
    var balanceLessFess: Float {
        get {
            return accountBalance - fees
        }
        
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    // 생성자
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    // 소멸자
    deinit {
        // 소멸자 코드
    }
    
    // 타입 메서드
    func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    // 인스턴스 메서드
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var account1: BankAccount = BankAccount(number: 123123123, balance: 20000000)
var balance1 = account1.accountBalance
var ac1 = account1.displayBalance()
var ac2 = BankAccount.getMaxBalance()
print(balance1)
var balance2 = account1.balanceLessFess
print(balance2)
account1.balanceLessFess = 12323.23
print(balance2)


class MyClass {
    var myNumber = 1
    func addTen() {
        self.myNumber += 10
    }
}


// 프로토콜

protocol MessageBuilder {
    var name: String {get}
    func buildMessage() -> String
}

class MyClass2: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildMessage() -> String {
        "Hello " + name
    }
}
