import UIKit

// MARK: - Базовые задачи

// MARK: - Task 1
print("Task 1 ...")
// В массиве переменных n хранятся вещественные числа с ненулевой дробной частью.
// Реализуйте программу, округляющую числа до ближайшего целого и выводящую результат в консоль

let n: [Double] = [1.3, 5.3, 9.4, 12.7]
for n1 in n {
    print(round(n1))
}

// MARK: - Task 2
print("Task 2 ...")
// В массиве переменных n хранятся трёхзначные числа.
// Реализуйте программу, вычисляющую и выводящую на экран сумму цифр числа n, сумму всех чисел, среднее арифмитическое, наибольшее и наименьшее из массива число.

let n2: [Int] = [123, 244, 300, 213]
let n3: [Int] = [1231, 2434, 302, 2113]
let n4: [Int] = [123, 244, 3400]

var sum2 = 0
n2.forEach { sum2 += $0 }
print(sum2)
print(sum2 / n2.count)
print("min: \(n2.min()), max: \(n2.max())")

func getArrayElementSum(array: [Int]) -> [Int] {
    var arraySums: [Int] = []
    
    for number in array {
        let strNumber: String = String(number)
        var arraySum: Int = 0
        for char in strNumber {
            let str = String(char)
            let number: Int? = Int(str)
            arraySum += number ?? 0
        }
        arraySums.append(arraySum)
    }
    return arraySums
}

var n2Array: [Int] = []
let n3Array: [Int] = getArrayElementSum(array: n3)
var n4Array: [Int] = []

n2Array += getArrayElementSum(array: n2)

getArrayElementSum(array: n4)

n4Array = getArrayElementSum(array: n4)

// MARK: - Task 3
print;("Task 3 ...")
// Cоздайте массив чисел, заполните их значениями от 1 до 100, перемешайте в случайном порядке.
// С помощью итерации проверьте входит ли каждое число в интервалы (15;25), (33;42) и (85;99).
// Выведите результат и числа в консоль

var numbers: [Int] = Array(1...100).shuffled()

let range1 = 15...25
let range2 = 33...42
let range3 = 85...99

for number in numbers {
    switch number {
    case range1:
        print("Number \(number) in the range \(range1)")
    case range2:
        print("Number \(number) in the range \(range2)")
    case range3:
        print("Number \(number) in the range \(range3)")
    default:
        continue
    }
}

// MARK: - Task 4
print("Task 4 ...")
// Выведите на экран все члены последовательности 2an-1–1, где a1=2, которые меньше 100

// MARK: - Task 5
print("Task 5 ...")
// Создайте массив из 20 случайных целых чисел из отрезка [1;10].
// Выведите массив в консоль в формате: «Индекс: [n]. Значение - x».
// Затем замените каждый элемент с четным индексом на ноль, а с нечётным на 1.
// И снова выведите массив в консоль

func makeList(_ n: Int) -> [Int] {
    var array: [Int] = []
    for _ in (1...n) {
        let randomInt = Int.random(in: 1..<10)
        array.append(randomInt)
    }
    
    return array
}

var list = makeList(20)

for (index, number) in list.enumerated() {
    print("index: \(index) value: \(number)")
}

for (index, _) in list.enumerated() {
    if index % 2 == 0 {
        list[index] = 0
    } else {
        list[index] = 1
    }
}
for (index, number) in list.enumerated() {
    print("index: \(index) value: \(number)")
}

// MARK: - Task 6
print("Task 6 ...")
// Создайте два массива из 10 целых случайных чисел из отрезка [1;9] и третий массив из 10 действительных чисел.
// Каждый элемент с i-ым индексом третьего массива должен равняться отношению элемента из первого массива с i-ым индексом к элементу из второго массива с i-ым индексом.
// Вывести все три массива на экран (каждый на отдельной строке), затем вывести количество целых элементов в третьем массиве.

// MARK: - Task 7
print;("Task 7 ...")
// Реализуйте программу, в которой создайте словарь и заполните его различными значениями
// А затем выведите в консоль новый словарь, где все ключи и значения поменялись местами.

var dictinary: [Int: String] = [1: "a", 2: "b", 3: "c", 4: "d"]
var dictinary1 = [String: Int]()

for (key, value) in dictinary {
    dictinary1[value] = key
}

dictinary1

// MARK: - Task 8
print("Task 8 ...")
// Создадим коллекцию Set из продуктов на кухне с типом элементов String размеров в 10 элементов.
// Удалите из множества все элементы, в названиях которых будет больше 6ти букв.

var products: Set<String> = ["Milk", "Bread", "Pasta", "Eggs", "Cheez", "Tea", "Coffee", "Oil", "Porridge", "Salt"]

let filteredProducts = products.filter { $0.count < 6 }

filteredProducts

// MARK: - Простые задачи

// MARK: - Task 1
print("Task 1 ...")
// Cоздайте массив из 12 элементов, где в каждой ячейке будет храниться количество дней в соответствующем месяце
// Выведите количество дней в каждом месяце (без имен месяцев)
// Используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
// Сделайте тоже самое, но используя массив кортежей (tupples) с параметрами (имя месяца, кол-во дней)
// Для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

var daysArray: [Int] = [30, 31, 29, 30, 30, 30, 31, 31, 29, 30 , 31, 29]
var monthsArray: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

daysArray.forEach { print($0) }

func printDaysAndMonths(months: [String], days: [Int]) {
    guard months.count == days.count else { return }
    for (index, month) in months.enumerated() {
        let days = days[index]
        print(days, month)
    }
}
printDaysAndMonths(months: monthsArray, days: daysArray)

let index = Int.random(in: 0..<monthsArray.count)
let months: String = monthsArray[index]
let days: Int = daysArray[index]
let randomDay = Int.random(in: 1...days)

let newDaysArray: [Int] = Array(daysArray[0..<index])

var daysCountSum: Int = 0
for daysCount in newDaysArray {
    daysCountSum += daysCount
}
let daysBeforeYearStar: Int = daysCountSum + randomDay

daysBeforeYearStar

var monthsDays: [(month: String, day: Int)] = []
monthsDays += [(month: "January", day: 30)]
monthsDays += [(month: "February", day: 31)]
monthsDays += [(month: "March", day: 29)]
monthsDays += [(month: "April", day: 30)]
monthsDays += [(month: "May", day: 30)]
monthsDays += [(month: "June", day: 31)]
monthsDays += [(month: "July", day: 30)]
monthsDays += [(month: "August", day: 31)]
monthsDays += [(month: "September", day: 30)]
monthsDays += [(month: "October", day: 29)]
monthsDays += [(month: "November", day: 30)]
monthsDays += [(month: "December", day: 31)]
print(monthsDays)

let currentDate: (String, Int) = ("April", 20)

monthsDays

// MARK: - Task 2
print("Task 2 ...")
// Создайте словарь из массива, где название месяца - это ключ, а количество дней - значение.
// В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы,
// а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
// Выведите в консоль только те месяцы, в которых 30 дней
// Выведите в консоль только те месяцы в названии которых меньше 7 букв.

var dates: [String: Int] = ["January": 30, "February": 31, "March": 29, "April": 30, "May": 29, "June": 30, "July": 31, "August": 29, "September": 30, "October": 29, "November": 30, "December": 29]

dates.forEach { (key, value) in
    print(key, value)
}

dates.keys.forEach { print($0) }
dates.values.forEach { print($0) }

for (month, day) in dates {
    guard day == 30 else { continue }
    print(month)
}

for month in dates.keys {
    guard month.count < 7 else { continue }
    print(month)
}

// MARK: - Task 3
print("Task 3 ...")
// Создайте словарь как журнал студентов, где имя и фамилия студента - это ключ, а оценка - это значение.
// Некоторым студентам измените текущие оценки.
// Затем добавьте 3х новых студентов в группу и оцените их.
// А потом удалите 5х ребят, потому что они отчислились.
// В конце посчитайте общий бал и средний бал ребят, которые остались в группе.

var grates: [String: Int] = ["Ilya Pastrevich": 5, "Anton Pastrevich": 1, "Nikita Litvinenok": 2, "Kate Dashkevich": 3]
grates["Anton Pastrevich"] = 2
grates["Nikita Litvinenok"] = 1

grates["Sasha Sinkevich"] = 3
grates["Valik Henin"] = 5
grates["Kolya Kozlovsky"] = 2

grates["Anton Pastrevich"] = nil
grates["Nikita Litvinenok"] = nil
grates["Sasha Sinkevich"] = nil
grates["Valik Henin"] = nil
grates["Kolya Kozlovsky"] = nil

var sum = 0
grates.values.forEach { sum += $0 }
print(sum)
print(sum / grates.count)

// MARK: - Task 4
print("Task 4 ...")
// Создайте словарь типа [String: (Int, Int)?],
// Где ключ - это String и хранит в себе название шахмотной фигуры
// А значение - это tuple и хранит в себе координаты фигуры X и Y на шахматной доске.
// Обратите внимание, что значение tuple - опционал и говорит о том, что фигуру "убили".
// Добавьте 5 разных фигур на шахматную доску и выведите в консоль информацию о положении каждой фигуры или ее отсутствии на поле.

var game: [String: (Int, Int)?] = ["King": (1, 6), "Qeen": nil, "Bishop": (4, 7), "Knight": nil, "Rook": (2, 9), "Pawns": nil]
game["KingX"] = nil
game["QeenX"] = (6, 1)
game["BishopX"] = nil
game["RookX"] = (8, 9)
game["PawnsX"] = nil
for (figure, position) in game {
    print("Name: \(figure) Position: \(String(describing: position))")
}

// MARK: - Task 5.
print("Task 5 ...")
// Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо.
//  Все элементы кортежа должны быть именованы.
// Одним выражением запишите каждый элемент кортежа в три константы.
// Теперь создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека.
// Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
// Решение оформите ниже

let favorite = (favoriteFilm: "Tor", favoriteNumber: 13, favoriteFood: "Meat")
favorite.favoriteFilm
print("Film \(favorite.favoriteFilm)")
let favoriteFriend = (favoriteFilmFriend: "Madmen", favoriteNumberFriend: 10, favoriteFoodFriend: "Potato")
let favoriteNumbers = (favorite.favoriteNumber - favoriteFriend.favoriteNumberFriend)

// MARK: - Сложные задачи
// MARK: - Task 1
print("Task 1 ...")
// Набирается группа студентов на курс по iOS разработке.
// Стоимость обучения для каждого студента зависит от общего количества слушателей.
// Если в группе менее 5 человек - стоимость обучения равна 1000 $ для каждого студента.
// Если количество слушателей от 5 до 8 человек - стоимость обучения равна 800 $ для каждого студента.
// Если количество слушателей от 9 до 12 человек - стоимость обучения равна 650 $ для каждого студента.
// Если количество слушателей более 12ти человек - стоимость обучения равна 500 $ для каждого студента.
// Реализуйте программу, которая подсчитает полную стоимость обучения всей группы с помощью конструкции if-else.
// Программа должна получать на вход количество студентов, которые собираются обучаться.

func getPrice(studentsCount: Int) -> Int {
    switch studentsCount {
    case 0..<5:
        return 1000
    case 5..<9:
        return 850
    case 9..<13:
        return 650
    case 13...:
        return 500
    default:
        return 0
    }
}

getPrice(studentsCount: 14)

// MARK: - Task 2
print("Task 2 ...")
// Используя массивы, сформируйте группу студентов, готовую посещать курсы.
// Для каждого студента добавьте Фамилию, возраст и флаг, который будет хранить информацию, есть ли у него/нее в наличии техника Apple.
// Отсортируйте группу: а) по возрасту, б) по Фамилиям

var students = [
    (name: "Ilya", age: 21, isHasMac: true),
    (name: "Katya", age: 22, isHasMac: true),
    (name: "Fedora", age: 23, isHasMac: false),
    (name: "Susanna", age: 20, isHasMac: false),
    (name: "Yan", age: 20, isHasMac: true),
    (name: "Yan", age: 19, isHasMac: true),
    (name: "Fedora", age: 13, isHasMac: false),
    (name: "Ilya", age: 19, isHasMac: true)
]

students.sort { $0.age < $1.age }
students

students.sort { $0.name < $1.name }
students

// MARK: - Task 3
print("Task 3 ...")
// Добавьте возможность случайным образом решить, какой студент пойдет у доске отвечать на вопросы преподавателя

let randomStudent = students.randomElement()

// MARK: - Task 4
print("Task 4 ...")
// Реализуйте программу, которая подсчитает полную стоимость обучения всей группы,
// с учетом того, что обучаться могут только те студенты, у которых есть в наличии техника Apple.
// Используете решения из предыдущих задач

let filteredStudents = students.filter { student in student.isHasMac }

let price = getPrice(studentsCount: filteredStudents.count)

price

// MARK: - Task 5
print("Task 5 ...")
// Используя словари, составьте журнал студентов, которые будут обучаться на курсах.
// Все студенты в журнале должны храниться под своим уникальным номером (id)
// В журнал можно добавить только тех студентов, которые удовлетворяют условиям предыдущих задач.

var studentsDict = [Int: String]()

for (index, value) in filteredStudents.enumerated() {
    studentsDict[index] = value.name
}

studentsDict

// MARK: - Task 6
print("Task 6 ...")
// Распределите студентов по группам так, чтобы в каждой группе были студенты с УНИКАЛЬНЫМИ фамилиями
// Каждый студент с повторяющейся фамилией попадает в новую группу.
// Выведите списки групп в консоль
// (Обратите внимание, какую коллекцию нужно использовать в решении)

var group1 = [String]()
var group2 = [String]()

for (_, student) in studentsDict {
    if !group1.contains(student) {
        group1.append(student)
    } else {
        group2.append(student)
    }
}

group1
group2
