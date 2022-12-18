//
//  SplashScreenView.swift
//  splashscreen
//
//  Created by iSushant on 19/12/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var showQuote: Bool = false
    @State private var scale = 0.4
    @State private var opacity = 0.6
    @State var isSplashActive: Bool = true
    
    var body: some View {
        if isSplashActive {
            ZStack {
                LinearGradient(colors: [Color("BasePink"), Color("BaseBlue")], startPoint: .center, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack (spacing: 0) {
                    Image("lco")
                        .resizable()
                        .frame(width: 150, height: 150)
                    
                    Text("LearnCodeOnline")
                        .bold()
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Text(showQuote ? "Home for programmers" : "")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(.top, 20)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1)) {
                                self.showQuote = true
                            }
                        }
                }
                .opacity(opacity)
                .scaleEffect(scale)
                .onAppear {
                    withAnimation(.easeOut(duration: 1.5)) {
                        self.opacity = 1
                        self.scale = 1
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            self.isSplashActive = false
                        }
                    }
                }
            }
        } else {
            ContentView()
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
