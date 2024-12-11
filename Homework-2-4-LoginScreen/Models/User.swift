//
//  User.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 10.12.2024.
//

struct User {
    // MARK: - Public Properties
    let login: String
    let password: String
    let person: Person
    
    // MARK: - Public Methods
    static func getUser() -> User {
        User(
            login: "1",
            password: "1",
            person: Person.getPerson()
        )
    }
}

struct Person {
    // MARK: - Public Properties
    let name: String
    let surname: String
    let age: Int
    let hobby: Hobby
    let job: Job
    let photo: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    // MARK: - Public Methods
    static func getPerson() -> Person {
        Person(
            name: "Aleksey",
            surname: "Zhurkin",
            age: 39,
            hobby: Hobby.tableTennis,
            job: Job.headOfASO,
            photo: "userPhoto",
            bio: "Алексей Журкин родился и вырос в городе Ростове-на-Дону, с детства любил создавать что-то необычное. Первая официальная работа была 1С программист, за два года самообучения он настолько познал этот язык, что начал писать небольшие игры на 1С, но быстро понял, что игры на 1С это утопия. Следующее погружение в мир IT состоялось через 8 лет, на этот раз чтобы охватить весь мир, своими изобретениями, он начал изучать веб технологии и опять с нуля. Изучив  HTML, CSS, PHP и JS на базовом уровне Алексей начал свою карьеру в мире интернета. И вот, еще через 10 лет Алексей начал изучать Swift с нуля, но это уже совсем другая история."
        )
    }
}

enum Hobby: String {
    case tableTennis = "Table Tennis"
    case football = "Football"
    case basketball = "Basketball"
}

enum Job: String {
    case aso = "ASO Manager"
    case cmo = "Chief Marketing Officer"
    case headOfASO = "Head of ASO"
}
