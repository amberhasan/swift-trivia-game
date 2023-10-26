//
//  ViewController.swift
//  TrviaWorkshop1
//
//  Created by Amber Hasan on 10/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var TrivaQuestion: UILabel!
    
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    @IBOutlet weak var ButtonC: UIButton!
    @IBOutlet weak var ButtonD: UIButton!
    
    //array to keep questions info
    private var questionsInfo = [TriviaQuestions]()
    private var selectedQuestion = 0
    
    //stretch goal
    private var correctQuestionCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionsInfo = createQuestions() //function to populate array
        //goes by index of question and passes it to configure function which assigns it to the element
        configure(with: questionsInfo[selectedQuestion])
    }
    
    
    @IBAction func onTapButtonA(_ sender: Any) {
        
        if(questionsInfo[selectedQuestion].questionInformation.correctChoice == questionsInfo[selectedQuestion].questionInformation.choices[0]){
            correctQuestionCount += 1
            print("Correct Answer 🌞")
        }
        
        //move onto the next question
        if(selectedQuestion < 4){
            selectedQuestion += 1
        }
        
        //call the function to get the question to display
        configure(with: questionsInfo[selectedQuestion])
        
    }
    
    @IBAction func onTapButtonB(_ sender: Any) {
        
        if(questionsInfo[selectedQuestion].questionInformation.correctChoice == questionsInfo[selectedQuestion].questionInformation.choices[1]){
            correctQuestionCount += 1
            print("Correct Answer 🌞")

        }
        
        //move onto the next question
        if(selectedQuestion < 4){
            selectedQuestion += 1
        }
        
        //call the function to get the question to display
        configure(with: questionsInfo[selectedQuestion])
    }
    
    @IBAction func onTapButtonC(_ sender: Any) {
        
        if(questionsInfo[selectedQuestion].questionInformation.correctChoice == questionsInfo[selectedQuestion].questionInformation.choices[2]){
            correctQuestionCount += 1
            print("Correct Answer 🌞")

        }
        
        //move onto the next question
        if(selectedQuestion < 4){
            selectedQuestion += 1
        }
        
        //call the function to get the question to display
        configure(with: questionsInfo[selectedQuestion])
    }
    
    @IBAction func onTapButtonD(_ sender: Any) {
        
        if(questionsInfo[selectedQuestion].questionInformation.correctChoice == questionsInfo[selectedQuestion].questionInformation.choices[3]){
            correctQuestionCount += 1
            print("Correct Answer 🌞")

        }
        
        //move onto the next question
        if(selectedQuestion < 4){
            selectedQuestion += 1
        }
        
        //call the function to get the question to display
        configure(with: questionsInfo[selectedQuestion])
    }
    
    
    private func createQuestions() -> [TriviaQuestions]{
        //create different var for each of the questions
        let quest1 = TriviaQuestions(questionInformation: .question1)
        let quest2 = TriviaQuestions(questionInformation: .question2)
        let quest3 = TriviaQuestions(questionInformation: .question3)
        let quest4 = TriviaQuestions(questionInformation: .question4)
        let quest5 = TriviaQuestions(questionInformation: .question5)
        return [quest1, quest2, quest3, quest4, quest5]; //create array w these
    }
    
    private func configure(with currQuestion: TriviaQuestions){
        QuestionLabel.text = "Question \(selectedQuestion + 1)" //to make it 1 indexed for the reader

        //assigned to the label TriviaQuestion
        TrivaQuestion.text = currQuestion.questionInformation.question

        ButtonA.setTitle(currQuestion.questionInformation.choices[0], for: .normal)
        ButtonB.setTitle(currQuestion.questionInformation.choices[1], for: .normal)
        ButtonC.setTitle(currQuestion.questionInformation.choices[2], for: .normal)
        ButtonD.setTitle(currQuestion.questionInformation.choices[3], for: .normal)
    }
}

