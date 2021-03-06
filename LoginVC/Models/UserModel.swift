//
//  UserModel.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

struct User {
    let userName: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let lastName: String
    var fullName: String {"\(name) \(lastName)"}
    let picture: UIImage
    let age: Int
    let hometown: String
    let hobbies: String
    let eduAndworkExperience: String    
    let linksToContact: [String : String]
    
}
let person = Person(
    name: "Alexey",
    lastName: "Mefodyev",
    picture: #imageLiteral(resourceName: "2021-05-19 00.40.08"),
    age: 26,
    hometown: "Cheboksary 🇷🇺",
    hobbies: """
💃 Танцы 🕺
С 2015 по 2017 занимался в профессиональной танцевальной команде FamFactory, в стилях Jazz Funk, Vogue, HipHop. После развивался индивидуально в стиле Popping. Выступил на 11 баттлах, рекорд - полуфинал Plekhanoff Open в 2016 году.

🏒 Хоккей ⛸
Занимался в детстве, для меня самая любимая игра. Нравится своей открытостью, скоростями, умением предугадывать траектории движения. Если ещё и на открытом воздухе, меня будет сложно вытащить со льда 😉.

💸 Инвестиции 💹
Закончил финансовый вуз и всегда интересовался финансовыми вложениями. Имею брокерский счёт с 2017 года, придерживаюсь строго долгосрочным инвестициям, без заёмных у брокера средств.

⛺️ Активный отдых на природе 🔥
Со студенческих времён полюбил отдых на природе. Большие города надоедают, а леса, озёра и реки подзаряжают энергией. Если соберётесь в поход, возьмите меня, помогу собрать палатку, разжечь костёр, и сыграть пару расслабляющих песен на походной шестиструнке.

""",
    eduAndworkExperience: """
2012: Окончил МБОУ "Гимназия №1" г. Чебоксары

2016: Окончил бакалавриат РЭУ им. Г.В. Плеханова г. Москва по специальности "Финансовая Аналитика"

2017: Работа в финансовом департаменте компании Huawei Technologies

2019: Окончил магистратуру МГУ им. М.В. Ломоносова г. Москва по специальности "Мировая Экономика"

2020 - по наст. время: Работа техническим аналитиком в компании ООО "КРОК Инкорпорейтед"

Начиная с 2020 г. интересуюсь iOS разработкой, имею желание работать на начальной позиции или пройти стажировку в любом направлении, связанной с iOS разработкой. Перейдя по кнопке ниже вы сможете просмотреть актуальные примеры кода.
""",
    linksToContact:
        ["Github" : "https://github.com/Mefodyev",
         "Telegram" : "https://t.me/mefodyev",
         "Instagram" : "https://www.instagram.com/mefodyev/",
         "HeadHunter" : "https://hh.ru/resume/b72e1aa8ff064de1510039ed1f45797145746d"])

let user = User(userName: "User", password: "Password", person: person)




