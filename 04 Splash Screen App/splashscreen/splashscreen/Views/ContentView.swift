//
//  ContentView.swift
//  splashscreen
//
//  Created by iSushant on 19/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("DarkModeColor")
                .ignoresSafeArea()
            
            VStack (spacing: 0) {
                Image("mascot")
                    .resizable()
                    .frame(width: 150, height: 200)
                
                Text("Hi Future Developer,")
                    .foregroundColor(.white)
                    .font(.system(size: 23))
                    .padding(.top, 15)
                
                Text("Welcome to LearnCodeOnline")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .bold()
                    .padding(.top, 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
