import UIKit
/*
 1.
 구조체 - 선언과 사용은 클래스와 같다. 다른점은 구조체의 인스턴스와 클래스의 인스턴스가 복사되거나 메서드 또는 함수에 인자가 전달될 때 발생하는 동작의 큰 차이가 있다. 구조체는 인스턴스는 값 타입이고, 클래스의 인스턴스는 참조 타입이기 때문이다.
  
 구조체 인스턴스가 복사되거나 메서드에 전달될 때 인스터스의 실제 복사본이 생성되면서 원본 객체가 가지고 있던 모든 데이터를 그대로 복사해서 갖게 된다. 즉, 복사본은 원본 구조체 인스턴스와는 별개인 자신만의 데이터를 가진다는 의미다.
 어떤 하나의 인스턴스를 변경해도 다른 복사본들에 영향을 미치지 않는다.
 
 클래스 인스턴스가 복사되거나 인자로 전달되면 해당 클래스 인스턴스가 있는 메모리의 위치에 대한 참조체가 만들어지거나 전달된다. 참조체를 변경하면 원본 인스턴스에도 동일한 작업이 수행된다.
 단 하나의 클래스 인스턴스가 있고 그 인스턴스를 가리키는 여러 개의 참조체가 존재하는 것이다. 참조체들 중 하나를 이용하여 인스턴스 데이터를 변경하면 모든 참조체의 데이터가 변경된다.
 
 
 struct SampleStruct {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 // myStruct1과 myStruct2는 각각 별개의 인스턴스임

 let myStruct1: SampleStruct = SampleStruct(name: "Kang")
 var myStruct2 = myStruct1

 myStruct2.name = "Hyeon"

 print(myStruct1.name)
 print(myStruct2.name)


 class SampleClass {
     
     var name: String
     
     init(name: String) {
         self.name = name
     }
 }

 // myClass1과 myClass2는 같은 메모리 위치를 가르킨다.

 let myClass1 = SampleClass(name: "Kang")
 var myClass2 = myClass1

 myClass2.name = "Hyeon"

 print(myClass1.name)
 print(myClass2.name)



 
 구조체는 클래스에 있던 상속이나 하위클래스를 지원하지 않는다.
 하나의 구조체가 다른 구조체에 상속될 수 없다.
 소멸자 메서드(deinit)를 포함할 수 없다.
 런타임에서 클래스 인스턴스의 유형을 식별할 수 있지만 구조체는 그렇지 않다.
 
 구조체와 클래스는 언제 사용?
 구조체가 클래스보다 효율적이고 멀티 스레드 코드를 사용하는 데 더 안정적이기 때문에 가능하다면 구조체를 권장한다고 한다. 하지만, 상속이 필요하거나 데이터가 캡슐화된 하나의 인스턴스가 필요할 대는 클래스를 사용해야 한다.
 또는 인스턴스가 소멸될 때 리소스를 확보하기 위한 작업이 필요할 때도 클래스를 사용해야 한다.
 
 */


struct SampleStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// myStruct1과 myStruct2는 각각 별개의 인스턴스임

let myStruct1: SampleStruct = SampleStruct(name: "Kang")
var myStruct2 = myStruct1

myStruct2.name = "Hyeon"

print(myStruct1.name)
print(myStruct2.name)


class SampleClass {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// myClass1과 myClass2는 같은 메모리 위치를 가르킨다.

let myClass1 = SampleClass(name: "Kang")
var myClass2 = myClass1

myClass2.name = "Hyeon"

print(myClass1.name)
print(myClass2.name)


