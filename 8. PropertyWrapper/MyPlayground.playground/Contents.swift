import UIKit

/*
 
 1.
 프로퍼티 래퍼
 
 
 */

// 연산 프로퍼티
struct Address {
    private var cityName : String = ""
    
    // 도시 이름이 프로퍼티에 할당되면 연산 프로퍼티의 세터가 private cityName 변수에 값을 저장하기 전에 대문자로 변환한다. 게터로 cityName을 호출한다.
    var city: String {
        get {cityName}
        set {cityName = newValue.uppercased()}
    }
}

var address = Address()

address.city = "London"
print(address.city)


// 프로퍼티 래퍼

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}


var contact = Contact(name: "Kang", city: "Jeonju", country: "g")
print("\(contact.name), \(contact.city), \(contact.country)")


// 프로퍼티 래퍼2

@propertyWrapper
struct MinMaxVal {
    var value: Int
    let max: Int
    let min: Int
    
    init(wrappedValue: Int, min: Int, max: Int) {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: Int {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct Demo {
    @MinMaxVal(min: 100, max: 200) var value: Int = 100
}

var demo = Demo()
demo.value = 150
print(demo.value)

demo.value = 250
print(demo.value)


// 프로퍼티 래퍼 Comparable

@propertyWrapper
struct MinMaxVal2<V: Comparable> {
    var value: V
    let max: V
    let min: V
    
    init(wrappedValue: V, min: V, max: V) {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct Demo2 {
    @MinMaxVal2(min: "Apple", max: "Orange") var value: String = ""
}

var demo2 = Demo2()

// Banana는 Apple과 Orange 알파벳 범위 내에 있어서 저장된다.
demo2.value = "Banana"
print(demo2.value)

// Pear는 Apple과 Orange 알파벳 범위 내에 있지 않아 저장되지 않는다.
demo2.value = "Pear"
print(demo2.value)
