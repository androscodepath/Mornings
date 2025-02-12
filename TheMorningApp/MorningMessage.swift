//
//  MorningMessage.swift
//  TheMorningApp
//
//  Created by Andros Slowley on 2/12/25.
//

enum MorningMessage {
    case Words
    case Quotes
    case Affirmations
    
    func messages() -> [String] {
        switch self {
        case .Affirmations: return ["Remember, you are beautiful", "No one has power over you unless you give them", "Unstoppable is not a word it is you"]
        case .Quotes: return ["Love conquers all things, so we too shall yield to love", "Sometimes the way light enters us is, in fact, through the wound.", "A little bit of fragrance always clings to the hands that gives the rose"]
        case .Words: return ["Elaborate", "Dichotomy", "Brilliant"]
        }
    }
}
