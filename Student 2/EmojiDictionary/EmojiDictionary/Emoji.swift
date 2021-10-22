//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Tyler Christensen on 10/11/21.
//

import Foundation
struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String

    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let archiveURL = Emoji.documentsDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")

    
    static func saveToFile(emojis: [Emoji] ) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmoji = try? propertyListEncoder.encode(emojis)
        
        try? encodedEmoji?.write(to: archiveURL, options: .noFileProtection)
        
    }
    static func loadFromFile() -> [Emoji] {
        let propertyListDecoder = PropertyListDecoder()

        if let retrievedEmojisData = try? Data(contentsOf: archiveURL),
           let emojis = try? propertyListDecoder.decode(Array<Emoji>.self, from: retrievedEmojisData) {
             return emojis
        }

        return Emoji.sampleEmojis()
    }
    
    static func sampleEmojis() -> [Emoji] {
        return [
            Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
            Emoji(symbol: "😕", name: "Confused face", description: "A confused puzzled face.", usage: "unsure what to think ; displeasure"),
            Emoji(symbol: "😍", name: "Heart Eyes",
                  description: "A smiley face with hearts for eyes.",
                  usage: "love of something; attractive"),
            Emoji(symbol: "🧑‍💻", name: "Developer", description: "A person working on a Macbook (probably using Xcode to write iOS apps in Swift).", usage: "apps, software, programming"),
            Emoji(symbol: "🐢", name: "Turtle", description:
                    "A cute turtle.", usage: "something slow"),
            Emoji(symbol: "🐘", name: "Elephant", description:
                    "A gray elephant.", usage: "good memory"),
            Emoji(symbol: "🍝", name: "Spaghetti",
                  description: "A plate of spaghetti.", usage: "spaghetti"),
            Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
            Emoji(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "Camping"),
            Emoji(symbol: "📚", name: "Stack of books", description: "Three colored books stacked on each other.", usage: "homework, studying."),
            Emoji(symbol: "💔", name: "Broken Heart",
                  description: "A red, broken heart.", usage: "extreme sadness"),
            Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
            Emoji(symbol: "🏁", name: "Checkered Flag",
                  description: "A black-and-white checkered flag.", usage: "completion")
            ]
    }
    
    
}
