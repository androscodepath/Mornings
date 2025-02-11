//
//  Model.swift
//  TheMorningApp
//
//  Created by Andros Slowley on 2/11/25.
//

enum MorningMessageType: String {
    case Word = "📚 Words"
    case Quote = "💬 Quotes"
    case Affirmation = "💪 Affirmations"
}

extension MorningMessageType {
    func messages() -> [String] {
        switch self {
        case .Word:
            return ["Visceral","Palpable", "Modicum"]
        case .Quote:
            return ["Me Doubt Myself. I Doubt That",
                    "Knowing is not enough, we must apply. Willing is not enough, we must do.",
                    "A little bit of fragrance always clings to the hands that gives the rose"
            ]
        case .Affirmation:
            return ["You are legend", "Today is your day", "You shine beyond their hate"]
        }
    }
}
