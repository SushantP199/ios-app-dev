//
//  ContentView.swift
//  Shared
//
//  Created by iSushant on 20/10/22.
//

import SwiftUI

enum Choice: Int, Identifiable {
    
    var id: Int {
        rawValue
    }
    
    case success
    case failure
}

struct ContentView: View {
    
    @State public var modes = ["eating", "happy", "love", "scary", "sleeping"]
    
    @State public var currentModes = [0, 1, 2, 3, 4]
    
    @State public var counter: Int = 0
    
    var totalAttempts: Int = 6
    
    @State private var showAlert: Bool = false
    @State private var alertTitle: String = ""
    @State private var alertType: Choice?
    

    var body: some View {
        ZStack {
            Image("sunshine")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 50) {
                HStack {
                    Image("fire")
                        .resizable()
                        .scaledToFit()
                    
                    Text("SLOT MACHINE")
                        .font(.system(size: 34))
                        .fontWeight(.black)
                        
                    Image("fire")
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: .infinity, height: 55, alignment: .center)
                .shadow(color: .orange, radius: 1, y: 4)
                
                VStack {
                    HStack (spacing: 45) {
                        Hexagon()
                            .fill(Color("grayishWhite"))
                            .frame(width: 110, height: 125)
                            .shadow(color: .gray, radius: 4, x: 4, y: 4)
                            .overlay(
                                Image(modes[currentModes[0]])
                                    .resizable()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .shadow(color: .gray, radius: 4, x: 5, y: 5)
                            )
                        
                        Hexagon()
                            .fill(Color("grayishWhite"))
                            .frame(width: 110, height: 125)
                            .shadow(color: .gray, radius: 4, x: 4, y: 4)
                            .overlay(
                                Image(modes[currentModes[1]])
                                    .resizable()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .shadow(color: .gray, radius: 4, x: 5, y: 5)
                            )
                    }
                    
                    Hexagon()
                        .fill(Color("grayishWhite"))
                        .frame(width: 110, height: 120)
                        .shadow(color: .gray, radius: 4, x: 4, y: 4)
                        .overlay(
                            Image(modes[currentModes[2]])
                                .resizable()
                                .frame(width: 80, height: 80, alignment: .center)
                                .shadow(color: .gray, radius: 4, x: 5, y: 5)
                        )
                    
                    HStack (spacing: 45) {
                        Hexagon()
                            .fill(Color("grayishWhite"))
                            .frame(width: 110, height: 125)
                            .shadow(color: .gray, radius: 4, x: 4, y: 4)
                            .overlay(
                                Image(modes[currentModes[3]])
                                    .resizable()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .shadow(color: .gray, radius: 4, x: 5, y: 5)
                            )
                        
                        Hexagon()
                            .fill(Color("grayishWhite"))
                            .frame(width: 110, height: 125)
                            .shadow(color: .gray, radius: 4, x: 4, y: 4)
                            .overlay(
                                Image(modes[currentModes[4]])
                                    .resizable()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .shadow(color: .gray, radius: 4, x: 5, y: 5)
                            )
                    }
                }
                
                VStack {
                    Text("\(totalAttempts - counter)")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .orange, radius: 2, y: 4)
                    
                    Text("Attempts Left")
                        .font(.system(.title))
                        .foregroundColor(.white)
                        .shadow(color: .orange, radius: 2, y: 4)
                }
                
                Button {
                    currentModes[0] = Int.random(in: 0...modes.count - 1)
                    currentModes[1] = Int.random(in: 0..<modes.count)
                    currentModes[2] = Int.random(in: 0..<modes.count)
                    currentModes[3] = Int.random(in: 0..<modes.count)
                    currentModes[4] = Int.random(in: 0..<modes.count)
                    
                    counter += 1
                    
                    let isEachSlotMoodSame = self.currentModes[0] == self.currentModes[1] &&
                                            self.currentModes[1] == self.currentModes[2] &&
                                            self.currentModes[2] == self.currentModes[3] &&
                                            self.currentModes[3] == self.currentModes[4]
                    
                    if isEachSlotMoodSame {
                        self.showAlert = true
                        self.alertTitle = "Yahhh, You Won!"
                        self.alertType = Choice.success
                    }
                    
                    if counter >= totalAttempts {
                        self.showAlert = true
                        self.alertTitle = "Oooppss!"
                        self.alertType = Choice.failure
                    }
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("orangish"))
                        .frame(width: 210, height: 40)
                        .overlay(
                            Text("SPIN")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                        )
                        .foregroundColor(.black)
                        .shadow(color: .gray, radius: 1, y: 4)
                }
            }
            .alert(
                alertTitle,
                isPresented: $showAlert,
                presenting: alertType,
                actions: { _ in
                    Button("Cancel", role: .cancel, action: {self.counter = 0})
                },
                message:{ alertType in
                    switch alertType {
                    case .success:
                        Text("Born With The Charm.")
                    case .failure:
                        Text("Better Luck Next Time.")
                    }
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
