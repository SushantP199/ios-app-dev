//
//  NotificationView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct NotificationView: View {
    
    let notification: NotificationModel
    
    var body: some View {
        VStack (spacing: 0) {
            HStack (alignment: .center, spacing: 10) {
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .foregroundColor(notification.read ? .clear : .blue)
                
                Image("notification")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                Text(notification.text)
                    .font(.system(.callout))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                
                Spacer()
                
                VStack () {
                    Text("\(notification.timeAgo)m")
                        .font(.system(.caption))
                    
                    Spacer(minLength: 5)
                        
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(90))
                        .font(.title3)
                    
                    Spacer()
                }
                .foregroundColor(.gray)
            }
            .padding()
            
            Divider()
        }
        .frame(width: .infinity, height: .infinity)
        .background(notification.read ? .clear : .blue.opacity(0.4))
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(notification: .init(id: 0, text: "These metro cities will continue to push demand for housing in 2023, says this expert. Here'w what you need to know.", timeAgo: 5))
    }
}
