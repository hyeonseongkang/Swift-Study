import UIKit

/*
 1.
 변수 -> 나중에 값을 바꿀 수 있음
 상수 -> 나중에 값을 바꿀 수 없음 -> 코드 내에서 반복적으로 사용되는 값이 있을 때 유용
 - 애플은 코드의 효율성과 실행 성능의 향상을 위해서 가능하면 변수보다 상수를 사용하라고 권장한다.
 
 상수 또는 변수의 타입을 지정하는 두 가지 방법
 
 1. type annotation(타입 선언)
 - 변수나 상수를 선언할 때 이름 뒤에 콜론을 쓰고 타입을 선언하는 것 -> var userCount : Int = 10
 
 2. type inference(타입 추론)
 - 선언부에서 타입 선언이 없다면 스위프트 컴파일러는 타입 추론이라는 기술을 사용하여 변수 또는 상수의 타입을 지정한다. 컴파일러가 타입 추론을 사용하게 되면 변수 또는 상수가 초기화되는 시점에 할당된 값의 타입이 무엇인지를 판단하여 해당 타입으로 지정한다.
 var signalStrength = 2.231 // 컴파일러는 Double 타입으로 인식
 let companyName = "Naver" // 컴파일러는 String 타입으로 인식
 
 * 타입 선언 없이 상수를 선언하게 될 경우에는 반드시 선언 시점에서 값을 할당해야 한다.(상수를 선언할 때 타입 선언을 사용하면 나중에 할당해도 무관) -> let bookTitle: String  .....  bookTitle = "Swift Study"
 
 2.
 튜플 - 서로 다른 타입의 값을 하나의 그룹화
 let tuple1 = (10, 123.123, "tuple")
 let myTuple = tuple1.2 // 튜플 사용 -> tuple1의 2번째 값을 가져온다.
 print(myTuple) // 123.123
 
 let (tupleInt, tupleDouble, tupleString) = tuple1 // tuple1에 있는 값을 tupleInt, tupleDouble, tupleString에 할당
 var (tupleInt, _, tupleString) = tuple1 // tupleDouble -> _ 로 하여 값을 받지 않음
 let tuple2 = (tupleInt: 10, tupleDouble: 123.123, tupleString: "tuple2") // 생성 시점에서 각각의 값을 할당할 수 있음
 
 
 3.
 옵셔널 - 변수 또는 상수에 값이 할당되지 않은 상황을 처리하기 위한 타입
 var index: Int? // index라는 이름의 Int타입의 변수를 옵셔널로 선언한다. index변수는 정숫값이 할당되거나 아무런 값도 할당되지 않을 수 있다. 내부적으로 컴파일러와 런타임의 관점에서 볼 때 어떤 값도 할당되지 않은 옵셔널은 nil값을 갖는다.
 
 if index != nil {
    // index에 값이 있다.
 } else {
    // index에 값이 없다.
 }
 
 만약 옵셔널에 값이 할당되었다면 해당 값이 옵셔널 내에서 래핑되었다(wrapped)고 말한다. 옵셔널 안에 래핑된 값을 사용할 때는 강제 언래핑(forced unwrapping)이라는 개념을 이용한다. 이름 뒤에 !를 입력하여 값을 추출한다.
 var index: Int?
 index = 1
 var array = ["0", "1", "2"]
 
 if index != nil {
    print(array[index!])
 } else {
    print("index is nil")
 }
 
 강제 언래핑 대신, 옵셔널로 할당된 값을 옵셔널 바인딩(optional binding)을 이용하여 임시 변수나 상수에 할당할 수 있다.
 
 if let constantname = optionalName {
 
 }
 
 if var variableName = optionalName {
 
 }
 
 위의 코드는 두 가지 역할을 한다.
 첫 번째로 지정된 옵셔널이 값을 가지고 있는지를 확인한다.
 두 번째로 옵셔널 변수가 값을 가지고 있는 경우에 선언된 상수 또는 변수에 그 값을 할당한다. (if구문에서만 유효하다)
 
 var optional1: String?
 var optional2: String?
 
 optional1 = "optional1"
 optional2 = "optional2"
 
 // 여러개 바인딩 가능
 if let op1 = optional1, op2 = optional2 {
    print(op1)
    print(op2)
 }
 
 강제적으로 언래핑되도록 하는 방법
 
 var index: Int!
 index = 1
 var array = ["0", "1", "2"]
 
 if index != nil {
    print(array[index]) // var index: Int? -> print(array[index!])
 } else {
    print("index is nil")
 }
 
 할당된 값이 없거나 nil을 할당 할 수 있는 것은 옵셔널 타입뿐이다. 즉, 스위프트에서 옵셔널이 아닌 변수 또는 상수에는 nil을 할당할 수 없다.
 var myInt = nil // error
 var myString = nil // error
 let myConstant = nil // error
 
 
 4.
 타입 캐스팅과 타입 검사 - 스위프트 코드를 작성할 때 컴파일러가 어떤 값의 특정 타입을 식별하지 못하는 경우가 발생할 경우 메서드가 함수가 반환하는 값이 불명확하거나 예상되지 않은 타입의 값일 때 발생한다. 이럴 때는 as 키워드를 사용하여 컴파일러에게 타입을 알려줘야 한다. -> 타입 캐스팅(type casting, 형 변환)
 
 let value = record.object(forkey: "comment") as! String // recoed.obejct() 메서드가 반환하는 타입이 String이다.
 
 as -> 보장된 변환(업 캐스팅)
 as! -> 강제 변환(다운 캐스팅)
 
 다운 캐스팅을 잘못 사용하면 에러가 발생할 수 있다. 해서 다운캐스팅을 안전하게 하기 위해 as?를 사용한 옵셔널 바인딩을 사용하면 좋다. 만약 변환이 성공하면 지정한 타입의 옵셔널 값이 반환될 것이며, 그렇지 않다면 nil값이 반환될 것이다.
 
 if let myTextView = myScrollView as? UITextView {
    print("")
 } else {
    print("error")
 }
 
 */

var userCount = 10 // 변수
let userCount2 = 20 // 상수


