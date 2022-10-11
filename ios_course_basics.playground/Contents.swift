import UIKit

// MARK: - Swift Basics, Basic Operators

/*
 ref: https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
 ref: https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
 */

// MARK: - Task 1
/*
 - Объявить tuple c названием source из 2х Int (65, 30)
 - Присвоить значения source.0, source.1 в новые константы x, y
 - Объявить переменную result со значением 0
 - Рассчитать остаток от деления x на y и прибавить его к result используя Compound Assignment Operator +=
 */

// Example
let input = (start: 102, offset: 100)
let (a, b) = input
var exit = 0
exit += a % b

//Solution
let source = (x1: 65, x2: 30)
let (x, y) = source
var result1 = 0
result1 += x % y

// MARK: - Task 2
/*
 - Объявить bool константу hasValue с отрицательным значением
 - Обьявить константу result с результатом в зависимости от значения hasValue {true -> 30, false -> -93}
 - Сделать решение используя Ternary operator
 - Сделать решение используя if {} else {}
 */

// Example
let xValue = true
let yValue = xValue ? 1 : 0

//Solution
let hasValue: Bool = !true
let result = hasValue ? 30 : -93

let value: Int
if hasValue {
    value = 30
} else {
    value = -93
}
value

// MARK: - Task 3
/*
 - Обьявить переменную Optinal<String> sourceString
 - Используя Nil-Coalescing Operator, sourceString и default value "string" проинициализировать новую переменную String с именем resultString
 */

// Example
let optinalString: String? = nil
let stringValue: String = optinalString ?? "default"

//Solution
var optionalString: String? = nil
var string: String = optinalString ?? "string"
var resultString: String

// MARK: - Task 4
/*
 - Создать Range от 34 до 51 включительно
 - Сделать конструкцию for in {range} и распечатать значение используя команду print
 */

let range = 34...51
for number in range {
    print(number)
}

// MARK: - Task 5
/*
 - Создать переменную count с типом Int равную 0
 - Создать Range от 99 до 130 не включая 130
 - Сделать конструкцию for in {range} и посчитать в переменную count значение всех значение range
 */

var count: Int = 0
var range5 = 99...129
for number in range5 {
    count += number
}
count

// MARK: - Task 6
/*
 - Создать One-sided UInt range
 - Распечатать используя команду print последнее значение range
 - Распечатать входит ли значение -1_000_000_000_000_000 в range
 */

let oneSiedRange = ...100
if oneSiedRange.contains(-1_000_000_000_000_000) {
    print("Contain")
} else {
    print("No contain")
}

// MARK: - Task 7
/*
 - Создать 2 константы x, y c произвольными значениями
 - Используя логические операторы &&, ||, ! (NOT) написать следующий код
 - С помощью команды print распечатать текст "AND" при условии x == 1 и y < 0
 - С помощью команды print распечатать текст "OR" при условии x >= 1 или y > -1
 - С помощью команды print распечатать текст "NOT" при условии x != 10 или y != 10
 */

let x7: Int = 1
let y7: Int = 24

if x7 == 1 && y < 0 {
    print("AND")
}

if x7 >= 1 || y >= -1 {
    print("OR")
}

if x7 != 10 || y != 10 {
    print("NOT")
}

    // reference: https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html

// MARK: - Task 8
/*
 - Создать константу строки используя
 - String Literals
 - Multiline String Literals
 */

let stringLiterals = "Hello"
let multilineStringLiterals = """
Bye
"""

// MARK: - Task 9
/*
 - Проинициализировать строку используя произвольный unicode (Special Characters in String Literals)
 */

let dollarSign: String = "\u{24}"

// MARK: - Task 10
/*
 - Создать переменную типа String с пустым значением (Initializing an Empty String)
 - Прибавить к имеющейся строке строку "result"
 - Проверить строку на пустоту, в случае не пустой строки вывести с помощью print количество символов в строке
 */

var textString: String
textString = "result"
if textString.count == 0 {
    print("Error")
} else {
    print(textString.count)
}

// MARK: - Task 11
/*
 - Создать константу со значением "Swift iOS Dvelopment"
 - Распечатать с помощью print каждый символ с использованием for in
 */

let text = "Swift iOS Dvelopment"
for letter in text {
    print(letter)
}

// MARK: - Task 12
/*
 - Создать константы intValue, uintValue с произвольными значениями
 - Используя String Interpolation обявить константу interpolationString с использованием констант из предыдущего шага
 */

let intValue: String = "Hello"
let uintValue: String = " Ilya"

let interpolationString: String = intValue + uintValue

// MARK: - Task 13
/*
 - Создать переменную insertString со значением "Swift iOS Dvelopment"
 - Выполнить вставку символа '!' в конец строки
 - используя оператор сложения
 - используя функцию insert
 - Найти index подстроки "iOS" используя команду firstIndex и распечатать используя print
 - Проверить с помощью функции hasSuffix начинается ли строка insertString с подстроки "swift"
 */

var insertString: String = "Swift iOS Dvelopment"
insertString += " !"
insertString.insert("!", at: insertString.endIndex)

// MARK: - Task 14
/*
 - Создать строку xString со значением "x" yString = "y"
 - Написать код печатающий с помощью print "yep!" при условии что строки xString и yString не равны
 */

let xString: String = "x"
let yString: String = "y"

if xString != yString {
    print("yep")
}
