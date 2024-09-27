//
//  WelcomeView.swift
//  Code Trivia
//
//  Created by T'Cheznavia  Cherry on 3/29/24.
//

import SwiftUI

struct WelcomeView: View {    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    } // end of VStack Alignment
                    Spacer()
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                        HStack {
                            Spacer()
                            BottomTextView(str: "Okay, let's GO!")
                                .font(.body)
                                .bold()
                                .padding()
                            Spacer()
                        }.background(GameColor.accent)
                        
                    })
                    
                }.foregroundColor(.white)
                    
                } // end of VStack
            } // end of ZStack
        } // end of Navigation View
    } // end of var boody View

    
                   

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
