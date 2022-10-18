//
//  ContentView.swift
//  Shared
//
//  Created by iSushant on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack (alignment: .center, spacing: 20) {
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    
                    Text("Your Name")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .shadow(radius: 5)
                    
                    Text("iOS | Front End Developer")
                        .foregroundColor(.white)
                        .font(.body)
                    
                    HStack (spacing: 40) {
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 250, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                
                VStack (alignment: .center, spacing: 30) {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 5, y: 8)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                        )
                        .padding(.top, 50)
                    
                    HStack (alignment: .center, spacing: 60){
                        VStack {
                            Text("1775")
                                .font(.system(.title))
                                .foregroundColor(.pink)
                            
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Text("800")
                                .font(.system(.title))
                                .foregroundColor(.pink)
                            
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Text("231")
                                .font(.system(.title))
                                .foregroundColor(.pink)
                            
                            Text("Following")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                    }
                    
                    Text("About You")
                        .font(.system(size: 40))
                        .font(.system(.caption))
                    
                    Text("I'm a iOS Frontend Developer. Welcome to the series of iOS projects. Let's dive deeper and create some more exciting projects.")
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .opacity(0.7)
                        .lineLimit(4)
                        .multilineTextAlignment(.center)
                    
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
