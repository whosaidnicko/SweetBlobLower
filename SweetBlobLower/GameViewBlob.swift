//
//  GameViewBlob.swift
//  SweetBlobLower
//
//  Created by Nicolae Chivriga on 27/12/2024.
//

import SwiftUI


struct GameViewBlob: View {
    @EnvironmentObject private var navigationManager: RootManager
    @State var animationRepeating: Bool = false
    var body: some View {
        ZStack {
            Image("ourLogo")
                .scaleEffect(animationRepeating ? 1 : 0.8)
            VStack(spacing: 0) {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        ZStack {
                            Image("back")
                                .resizable()
                                .frame(width: 34, height: 30)
                            
                            Image("arrow")
                                .resizable()
                                .frame(width: 10 , height: 8)
                                .scaledToFit()
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
            
                
                WKWebViewRepresentable(url: URL(string: "https://plays.org/game/blob-lover/")!, onLoadCompletion: {
                })

            }
            
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 2).repeatForever()) {
                animationRepeating = true
            }
        }
    }
}
