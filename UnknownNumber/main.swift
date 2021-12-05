//
//  main.swift
//  UnknownNumber
//
//  Created by admin on 05.11.2021.
//
  //флаг для продолжения работы игры

var isDoNextRound: Bool = false

print ("Another print statement!")
print ("Hello, world!")
repeat {
    
    doNextRound()
    print("Для продолжения игры нажмите [Y] или [y].")
    if let answerFromConsole = readLine(), ["Y","y"].contains(answerFromConsole) {
        isDoNextRound = true
    }

} while isDoNextRound == true

func doNextRound () {
    
    print("Компьютер сгенерировал случайное число. Отгадай его!")
    let randomNumberArray: [UInt8] = Array(1...255)
    let randomNumber = randomNumberArray.randomElement()!
    //flag to win
    
    var isWin = false
    
    repeat {
        print("Введите ваш вариант и нажмите Enter.")
        let userNumberFromConsole = readLine()
        
        guard let tmpUserNumber = userNumberFromConsole, let userNumber = UInt8(tmpUserNumber) else {
            print("Вы ввели неверное значение")
            continue
        }
        if userNumber<randomNumber {
            print("more")
        } else if userNumber>randomNumber{
            print("less")
        } else {
            print("u won!")
            isWin = true
        }
    } while !isWin
}
print ("Cool")
