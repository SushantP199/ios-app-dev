//
//  SwiftUIView.swift
//  todoapp
//
//  Created by iSushant on 01/01/23.
//

import SwiftUI

struct NoTodosView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
            Spacer()
            
            Text("There are no todos!!")
                .foregroundColor(Color("TodoTileColor").opacity(0.7))
                .font(.system(.title))
            
            Text("Be more productive and add some todos and finish them on time.")
                .foregroundColor(Color("TodoTileColor").opacity(0.7))
                .font(.system(.headline))
                .multilineTextAlignment(.center)
            
            NavigationLink(destination: AddTodoView()) {
                Circle()
                    .fill(Color("AccentColor"))
                    .frame(width: 90, height: 90)
                    .overlay(
                        Image(systemName: "pencil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .shadow(radius: 0)
                    )
                    
            }
            .shadow(color: Color("TodoTileColor"), radius: animate ? 50 : 1)
            .offset(y: animate ? -10 : 0)
            .padding(.top, 30)
            .onAppear(perform: startAnimation)
            
            Spacer()
        }
        .frame(width: .infinity, height: .infinity, alignment: .center)
        .padding(.horizontal)
    }
    
    func startAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation (.easeInOut(duration: 1.5).repeatForever()) {
                animate.toggle()
            }
        }
    }
}

struct NoTodosView_Previews: PreviewProvider {
    static var previews: some View {
        NoTodosView()
    }
}
