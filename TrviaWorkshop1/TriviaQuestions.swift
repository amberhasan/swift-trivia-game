//
//  TriviaQuestions.swift
//  TriviaWorkshop
//
//
import Foundation
import UIKit
struct TriviaQuestions{
    let questionInformation: QuestionInformation
}
enum QuestionInformation{
    case question1
    case question2
    case question3
    case question4
    case question5
    
    var category: String{
        switch self {
        case .question1:
            return "Geography"
        case .question2:
            return "Pop Culture"
        case .question3:
            return "History"
        case .question4:
            return "Science"
        case .question5:
            return "Pop Culture"
        }
    }
    
    var question: String{
        switch self {
        case .question1:
            return "What is the national animal of Scotland?"
        case .question2:
            return "Who is Bruce Wayne?"
        case .question3:
            return "What treaty ended World War 1"
        case .question4:
            return "What part of the cell stores proteins?"
        case .question5:
            return "What was the subtitle of the 2nd Percy Jackson movie?"
        }
    }
        
    var correctChoice: String{
        switch self {
        case .question1:
            return "Unicorn"
        case .question2:
            return "Batman"
        case .question3:
            return "1964"
        case .question4:
            return "Ribosome"
        case .question5:
            return "The Sea of Monsters"
        }
    }
    
    var choices: [String]{
        switch self {
        case .question1:
            return ["Highland Cattle", "Mustang","Unicorn","Deerhound"]
        case .question2:
            return ["Batman","Superman","The Flash","The Joker"]
        case .question3:
            return ["1800", "1901", "1950", "1964"]
        case .question4:
            return ["Mitochondria", "Ribosome", "Chlorophyll", "All of it"]
        case .question5:
            return ["The Lighting Thief", "The Lost Hero", "Logan Lerman", "The Sea of Monsters"]
        }
    }
    
}


