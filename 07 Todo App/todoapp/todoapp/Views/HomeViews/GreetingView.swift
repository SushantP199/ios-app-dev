//
//  GreetingView.swift
//  todoapp
//
//  Created by iSushant on 02/01/23.
//

import SwiftUI

struct GreetingView: View {
    
    var greeting: String {
        get {
            let hour = Calendar.current.component(.hour, from: Date())
            
            switch hour {
            case 0..<5: return "Great Night!"
            case 5..<12: return "Great Morning!"
            case 12..<16: return "Great Afternoon!"
            case 16..<20: return "Great Evening!"
            default:
                return "Great Night!"
            }
        }
    }
    
    var date: String {
        get {
            let dateFormat = DateFormatter()
            
            dateFormat.dateStyle = .medium
            dateFormat.timeStyle = .none
            
            return dateFormat.string(from: Date())
        }
    }
    
    var day: String {
        get {
            let dateFormat = DateFormatter()
            
            dateFormat.dateFormat = "EEEE"
            
            return dateFormat.string(from: Date())
        }
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            Text(greeting)
                .font(.system(size: 60, weight: .bold, design: .rounded))
                .padding(.top, 5)
            
            HStack (alignment: .center) {
                Text(day)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 5, height: 5)
                
                Text(date)
                    .font(.system(size: 25, weight: .regular, design: .rounded))
                    
                Spacer()
            }
            .opacity(0.8)
        }
        .foregroundColor(Color.accentColor)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
