//
//  ResultsCaretaker.swift
//  GameMillionerGB
//
//  Created by Irina on 02.04.2023.
//

import Foundation
import UIKit


class ResultsCaretaker {
    
    // MARK: - Private properties
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    private let key = "results"
    
    // MARK: - Functions
    
    func save(results: [String]) {
        do {
            let data = try encoder.encode(results)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func loadResults() -> [String] {
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        do {
            return try decoder.decode([String].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
