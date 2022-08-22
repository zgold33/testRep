import UIKit

//MARK: - 1342. Number of Steps to Reduce a Number to Zero
// Given an integer num, return the number of steps to reduce it to zero.
//In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.

//func numberOfSteps(_ num: Int) -> Int {
//
//    var newNumber = num
//    var count: Int = 0
//
//    while newNumber > 0 {
//        if newNumber % 2 == 0 {
//            newNumber /= 2
//            count += 1
//        } else {
//            newNumber -= 1
//            count += 1
//        }
//    }
//    return count
//}
//
//numberOfSteps(8)

//MARK: - 2169. Count Operations to Obtain Zero
//You are given two non-negative integers num1 and num2.
//
//In one operation, if num1 >= num2, you must subtract num2 from num1, otherwise subtract num1 from num2.
//
//For example, if num1 = 5 and num2 = 4, subtract num2 from num1, thus obtaining num1 = 1 and num2 = 4. However, if num1 = 4 and num2 = 5, after one operation, num1 = 4 and num2 = 1.
//Return the number of operations required to make either num1 = 0 or num2 = 0.

//func countOperations(_ num1: Int, _ num2: Int) -> Int {
//
//    var int1 = num1
//    var int2 = num2
//    var count: Int = 0
//
//    while int1 > 0 && int2 > 0 {
//
//        if int1 > int2 {
//            int1 -= int2
//        } else {
//            int2 -= int1
//        }
//        count += 1
//    }
//    return count
//}
//
//countOperations(10, 10)

//MARK: - 1154. Day of the Year
//Given a string date representing a Gregorian calendar date formatted as YYYY-MM-DD, return the day number of the year.

//MARK: - 1154 N1
//func dayOfYear(_ date: String) -> Int {
//
//    let calendar = Calendar.current
//    let stringDate = date
//    var numberArray: [Int] = []
//
//    let stringArray = stringDate.components(separatedBy: "-")
//    print(stringArray)
//
//    stringArray.forEach { i in
//        guard let number = Int(i) else { return }
//        numberArray.append(number)
//    }
//
//    print(numberArray)
//
//    var dateComponents = DateComponents()
//    dateComponents.year = numberArray[0]
//    dateComponents.month = numberArray[1]
//    dateComponents.day = numberArray[2]
//
//    let transferDate = calendar.date(from: dateComponents)
//
//    let dayOfTheYear = calendar.ordinality(of: .day, in: .year, for: transferDate!)
//
//    return dayOfTheYear!
//}
//
//dayOfYear("2019-02-10")

//MARK: - 1154 N2

//func dayOfYear(_ date: String) -> Int {
//
//    let calendar = Calendar.current
//
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy-MM-dd"
//
//    let seekingDate = formatter.date(from: date)
//
//    let dayOfTheYear = calendar.ordinality(of: .day, in: .year, for: seekingDate!)
//
//    return dayOfTheYear!
//}
//
//dayOfYear("2019-02-10")


//MARK: - 387. First Unique Character in a String
//Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
//

func firstUniqChar(_ s: String) -> Int {

    let array = s.map { String($0) }
    
    for i in 0..<array.count {
        if array.filter { $0 == array[i] }.count == 1 {
            return i
        }
    }

   return -1
}

firstUniqChar("wergwwgerdfm")
























//
//func firstUniqChar(_ s: String) -> Int {
//
//    let array = s.map { String($0) }
//
//    for i in 0..<array.count {
//        if array.filter{ $0 == array[i] }.count == 1 {
//            return 1
//        }
//    }
//    return -1
//}
//
//firstUniqChar("aabb")

