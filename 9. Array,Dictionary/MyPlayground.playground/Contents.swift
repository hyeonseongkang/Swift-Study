import UIKit
/*
 1.
 스위프트에서의 컬렉션은 가변형과 불변형이 있다. 불변형 컬렉션 인스턴스에 속한 것은 객체가 초기화된 이후에 별경될 수 없다. 불변형 컬렉션을 만들고 싶다면 컬렉션을 생성할 때 상수에 할당한다. 변수에 할당했다면 가변형이 된다.
 
 2.
 배열 - 선언
 2.1) var 변수명: [타입] = [값1, 값2, 값3, ...]

 2.2) var 변수명 = [타입]()
 
 
 3.
 딕셔너리 - 키-값 쌍의 형태로 데이터를 저장하고 관리할 수 있게 해준다. 딕셔너리는 배열과 비슷한 목적의 작업을 실시하지만, 딕셔너리에 저장된 각 항목은 연관된 값을 참조하고 접근하는 데 사용되는 유일한 키와 연결되어 있다는 점이 다르다.
 현재는 String, Int, Double, Bool 데이터 타입만 스위프트 딕셔너리 키로 사용할 수 있음.
 
 선언
 3.1) var 변수명: [키 타입: 값 타입] = [키1: 값1, 키2: 값2, .... ]
 
 3.2) var 변수명 = [키 타입: 값 타입]()
 var myDictionary = [Int: String]()
 
 3.3) 시퀀스 기반 딕셔너리 초기화
 let keys = [111, 222, 333, 444, 555]
 let values = ["one", "two", "three", "four", "five"]

 let dic1 = Dictionary(uniqueKeysWithValues: zip(keys, values))
 print(dic1)

 let dic2 = Dictionary(uniqueKeysWithValues: zip(1..., values))
 print(dic2)
 
 */

var treeArray = ["Pine", "Oak", "Yew"]

// 배열 항목 갯수
var itemCount = treeArray.count
print(itemCount)

// 배열 비어 있는지 확인
if treeArray.isEmpty {
    // 배열이 비어 있다면
}

// 배열 항목 접근
print(treeArray[2])

// 배열 항목 교체
treeArray[1] = "!!!"

// 배열 항목 섞기
print(treeArray)
let shuffledTrees = treeArray.shuffled()
print(shuffledTrees)

// 배열 항목 무작위로 가져오기
let randomTree = treeArray.randomElement()
print(randomTree!)

// 항목 추가
treeArray.append("Redwood1")
treeArray += ["Redwood2"]
treeArray += ["Redwood3", "Redwood4"]
print(treeArray)

// 특정 위치에 삽입
treeArray.insert("Maple", at: 0)
print(treeArray)


// 특정 위치 삭제, 전체 삭제
let treeArray2 = treeArray

treeArray.remove(at: 2)
print(treeArray)

treeArray.removeAll()
print(treeArray)

// 배열 반복
for tree in treeArray2 {
    print(tree)
}


// 타입이 혼합된 배열 사용
let mixedArray: [Any] = ["A String", 111, 22.222]



// 딕셔너리
var number: [String : String] =
[ "111-1111" : "one",
"222-2222" : "two",
"333-3333" : "three",
"444-4444" : "four"
]

print(number)

// 시퀀스 기반의 딕셔너리 초기화

let keys = [111, 222, 333, 444, 555]
let values = ["one", "two", "three", "four", "five"]

let dic1 = Dictionary(uniqueKeysWithValues: zip(keys, values))
print(dic1)

let dic2 = Dictionary(uniqueKeysWithValues: zip(1..., values))
print(dic2)

// count

print(dic2.count)

// print, update

print(number["111-1111"])

number["111-1111"] = "223233"

print(dic2[2])

// 지정된 키에 해당하는 값이 없는 경우 사용될 디폴트 값

print(number["123", default: "not found"])

number.updateValue("111-1111", forKey: "하하하하")
print(number["111-1111"])


// add

number["555-5555"] = "five"
print(number["555-5555"])

// remove
number["555-5555"] = nil
print(number["555-5555", default: "555-5555 not found"])

number.removeValue(forKey: "111-1111")
print(number["111-1111", default: "111-1111 not found"])


// dictinary loop

for (key, value) in number {
    print("key: \(key) = value: \(value)")
}
