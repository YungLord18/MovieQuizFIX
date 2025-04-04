//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Ден on 21.03.2024.
//

import UIKit

class AlertPresenter {
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func showAlert(model: AlertModel) {
        guard let viewController = viewController else {
            return
        }
        
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert)
        let action = UIAlertAction(title: model.buttonText, style: .default) { _ in
            model.completion()
        }
        
        alert.view.accessibilityIdentifier = "QuizResultsAlert"
        alert.addAction(action)
        viewController.present(alert, animated: true, completion: nil)
    }
}
