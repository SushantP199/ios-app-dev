//
//  ContentView.swift
//  calculator
//
//  Created by iSushant on 14/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.pink.opacity(0.3), .purple.opacity(0.5)], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            KeyView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
