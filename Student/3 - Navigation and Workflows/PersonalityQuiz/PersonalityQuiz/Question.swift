//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Tyler Christensen on 10/14/21.
//

import Foundation

struct Answer {
    var text: String
    var type: JediType
}

enum JediType: Character {
    case anakin = "🔵", mace = "🟣", rey = "🟡", yoda = "🟢"
    
    var definition: String {
        switch self {
        case .anakin:
            return "You are the chosen one. You are strong and courageous, and wil one day bring balance to the force."
        case .mace:
            return "You are a powerful ally and full of wisdom. You have a unique skillset fighting with fury. And a unique color of lightsaber."
        case .rey:
            return "You are strong and brave. You are willing to fight for what is right and be there for your friends."
        case .yoda:
            return "You are full of wisdom and always trust in the force. Others look to you for your great wisdom in the force."
        }
    }
}

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    
}

enum ResponseType {
    case single, multiple, ranged
}




