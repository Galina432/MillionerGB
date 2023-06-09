//
//  ResultViewController+DataSource.swift
//  GameMillionerGB
//
//  Created by Irina on 02.04.2023.
//

import Foundation
import UIKit
extension ResultViewController: UITableViewDataSource {
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ResultCell.identifier, for: indexPath) as? ResultCell else { return UITableViewCell() }
        cell.textLabel?.text = Game.shared.results[indexPath.row]
        return cell
    }
}
