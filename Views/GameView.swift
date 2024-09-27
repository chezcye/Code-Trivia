//
//  ContentView.swift
//  Code Trivia
//
//  Created by T'Cheznavia  Cherry on 2/3/24.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            } // end of VStack
            .background(
                NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correcctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver),  label: {EmptyView() })
            )
        } // end of ZStack
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    } // end of View
} // end of GameView 
    

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        } // end of view
    } // Content View Previews
    
    

