//
//  GameViewController+DataSource.swift
//  GameMillionerGB
//
//  Created by Irina on 02.04.2023.
//

import Foundation
import UIKit
extension GameViewController: UITableViewDataSource {
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Question.questions[indexQuestion].answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AnswerCell.identifier, for: indexPath) as? AnswerCell else { return UITableViewCell() }
        let question = Question.questions[indexQuestion]
        cell.setAnswerLabel(text: question.answers[indexPath.row].answer)
        cell.setCorrectAnswer(isCorrect: question.answers[indexPath.row].isCorrect)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: QuestionView.identifier) as? QuestionView else { return nil }
        header.setQuestionLabel(text: Question.questions[indexQuestion].question)
        return header
    }
}
