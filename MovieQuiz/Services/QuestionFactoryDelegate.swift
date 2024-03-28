//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Ден on 20.03.2024.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}

