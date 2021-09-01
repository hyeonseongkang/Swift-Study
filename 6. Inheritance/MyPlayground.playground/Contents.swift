import UIKit
/*
 1.
 상속 - 다른 언어들과 상속 개념이 다르지 않음. 스위프트의 하위 클래스는 반드시 단 한개의 부모 클래스만 둘 수 있다 -> 단일 상속(single inheritance)
 
 // 상위 클래스
 class BankAccount {
     
     var accountBalance: Float
     var accountNumber: Int
     
     init(number: Int, balance: Float) {
         accountNumber = number
         accountBalance = balance
     }
     
     func displayBalance() {
         print("Number \(accountNumber)")
         print("Current balance is \(accountBalance)")
     }
 }

 // 하위 클래스
 class SavingsAccount: BankAccount {
     
     var interestRate: Float = 0.0
     
     //
     init(number: Int, balance: Float, rate: Float) {
         interestRate = rate
         super.init(number: number, balance: balance)
     }
     
     func calculateInterest() -> Float {
         // 상위 클래스인 BankAccount의 프로퍼티인 accountBalance 사용
         return interestRate * accountBalance
     }
     
     // 메서드 오버라이딩 1.
     override func displayBalance() {
         print("Number \(accountNumber)")
         print("Current balance is \(accountBalance)")
         print("Prevailing interest rate is \(interestRate)")
     }
     
     /*
     // 메서드 오버라이딩 2.
     override func displayBalance() {
         super.displayBalance()
         print("Prevailing interest rate is \(interestRate)")
     }
      */
 }


 let savings1 = SavingsAccount(number: 12311, balance: 600.00, rate: 0.07)

 print(savings1.calculateInterest())
 savings1.displayBalance()

 
 2.
 스위프트 클래스 익스텐션 - 스위프트 클래스에 새로운 기능을 추가하는 또 다른 방법은 익스텐션(extention)을 이용하는 방법이다. 익스텐션은 하위 클래스를 생성하거나 참조하지 않고 기존 클래스에 메서드, 초기화, 그리고 연산 프로퍼티와 서브스크립트 등의 기능을 추가하기 위하여 사용될 수 있다.
 
 extentions ClassName {
    // new function
 }
 
 extension Double {
     
     var squared: Double {
         return self * self
     }
     
     var cubed: Double {
        return self * self * self
     }
 }

 let myValue: Double = 3.0
 print(myValue.squared)
 print(3.0.cubed)
 
 익스텐션은 하위 클래스를 사용하지 않고 클래스의 기능을 확장할 수 있는 빠르고 편리한 방식을 제공한다. 하지만, 하위 클래스 역시 익스텐션보다 좋은 장점들을 가지고 있다. 예를 들어, 익스텐션을 이용해서는 클래스에 있는 기존의 기능을 오버라이드 할 수 없으며, 익스텐션에는 저장 프로퍼티를 포함할 수도 없다.
 
 
 */

// 상위 클래스
class BankAccount {
    
    var accountBalance: Float
    var accountNumber: Int
    
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
}

// 하위 클래스
class SavingsAccount: BankAccount {
    
    var interestRate: Float = 0.0
    
    //
    init(number: Int, balance: Float, rate: Float) {
        interestRate = rate
        super.init(number: number, balance: balance)
    }
    
    func calculateInterest() -> Float {
        // 상위 클래스인 BankAccount의 프로퍼티인 accountBalance 사용
        return interestRate * accountBalance
    }
    
    // 메서드 오버라이딩 1.
    override func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
        print("Prevailing interest rate is \(interestRate)")
    }
    
    /*
    // 메서드 오버라이딩 2.
    override func displayBalance() {
        super.displayBalance()
        print("Prevailing interest rate is \(interestRate)")
    }
     */
}


let savings1 = SavingsAccount(number: 12311, balance: 600.00, rate: 0.07)

print(savings1.calculateInterest())
savings1.displayBalance()


extension Double {
    
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
       return self * self * self
    }
}

let myValue: Double = 3.0
print(myValue.squared)
print(3.0.cubed)
