//
//  ScoreViewModel.swift
//  Code Trivia
//
//  Created by T'Cheznavia  Cherry on 5/9/24.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        correctGuesses * 100 / (correctGuesses + incorrectGuesses)
    }
}
