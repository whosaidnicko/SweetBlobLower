//
//  RulesView.swift
//  SweetBlobLower
//
//  Created by Nicolae Chivriga on 27/12/2024.
//

import SwiftUI

struct RulesView: View {
    @EnvironmentObject private var navigationManager: RootManager
    var body: some View {
        ZStack {
            VStack {
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
                Spacer()
            }
            .padding()
            Image("ruling")
                
                    Text("""
Control the jelly character falling from above and choose the correct trajectory to collect all the hearts along the way. Avoid missing any and aim to calculate each drop carefully to complete the level successfully and earn the maximum score!
""")
                    .font(.system(size: 15, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.horizontal, 70)
                
        }
    }
}
