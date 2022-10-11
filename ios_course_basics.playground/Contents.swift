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


// MARK: - Task 3
/*
 - Обьявить переменную Optinal<String> sourceString
 - Используя Nil-Coalescing Operator, sourceString и default value "string" проинициализировать новую переменную String с именем resultString
 */

// Example
let optinalString: String? = nil
let stringValue: String = optinalString ?? "default"


// MARK: - Task 4
/*
 - Создать Range от 34 до 51 включительно
 - Сделать конструкцию for in {range} и распечатать значение используя команду print
 */


// MARK: - Task 5
/*
 - Создать переменную count с типом Int равную 0
 - Создать Range от 99 до 130 не включая 130
 - Сделать конструкцию for in {range} и посчитать в переменную count значение всех значение range
 */


// MARK: - Task 6
/*
 - Создать One-sided UInt range
 - Распечатать используя команду print последнее значение range
 - Распечатать входит ли значение -1_000_000_000_000_000 в range
 */


// MARK: - Task 7
/*
 - Создать 2 константы x, y c произвольными значениями
 - Используя логические операторы &&, ||, ! (NOT) написать следующий код
 - С помощью команды print распечатать текст "AND" при условии x == 1 и y < 0
 - С помощью команды print распечатать текст "OR" при условии x >= 1 или y > -1
 - С помощью команды print распечатать текст "NOT" при условии x != 10 или y != 10
 */



// reference: https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html

// MARK: - Task 8
/*
 - Создать константу строки используя
 - String Literals
 - Multiline String Literals
 */


// MARK: - Task 9
/*
 - Проинициализировать строку используя произвольный unicode (Special Characters in String Literals)
 */


// MARK: - Task 10
/*
 - Создать переменную типа String с пустым значением (Initializing an Empty String)
 - Прибавить к имеющейся строке строку "result"
 - Проверить строку на пустоту, в случае не пустой строки вывести с помощью print количество символов в строке
 */


// MARK: - Task 11
/*
 - Создать константу со значением "Swift iOS Dvelopment"
 - Распечатать с помощью print каждый символ с использованием for in
 */


// MARK: - Task 12
/*
 - Создать константы intValue, uintValue с произвольными значениями
 - Используя String Interpolation обявить константу interpolationString с использованием констант из предыдущего шага
 */


// MARK: - Task 13
/*
 - Создать переменную insertString со значением "Swift iOS Dvelopment"
 - Выполнить вставку символа '!' в конец строки
 - используя оператор сложения
 - используя функцию insert
 - Найти index подстроки "iOS" используя команду firstIndex и распечатать используя print
 - Проверить с помощью функции hasSuffix начинается ли строка insertString с подстроки "swift"
 */


// MARK: - Task 14
/*
 - Создать строку xString со значением "x" yString = "y"
 - Написать код печатающий с помощью print "yep!" при условии что строки xString и yString не равны
 */
