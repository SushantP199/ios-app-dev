//
//  NotificationsView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct NotificationsView: View {
    
    let notifications: [NotificationModel] = [
        .init(id: 0, text: "These metro cities will continue to push demand for housing in 2023, says this expert. Here'w what you need to know.", timeAgo: 5),
        .init(id: 1, text: "Wednesday News Wrap: Tips for effective time management. Skills you can learn from travel; and more.", timeAgo: 34, read: true),
        .init(id: 2, text: "A post by an employee at Nitrogen is popular: Please rate my work pencil art visit@art.in", timeAgo: 4),
        .init(id: 3, text: "Here's what to consider when returning to work after a break, according to an author.", timeAgo: 10),
        .init(id: 4, text: "It's important to convey your enthusiasm during job interview, says an expert. Here's how to go about it.", timeAgo: 45, read: true),
        .init(id: 5, text: "Your job alert has course: Taking Charge of Your Work", timeAgo: 6),
        .init(id: 6, text: "The key overcoming self-doubt? Build courage and not confidence, says his expert.", timeAgo: 1, read: true),
        .init(id: 7, text: "It's impoertant to remain authentic during a job interview. Here's why.", timeAgo: 50, read: true),
        .init(id: 8, text: "Here's how to balance upskilling and your current job.", timeAgo: 45, read: true),
        .init(id: 9, text: "Finish you job post to start getting qualified applicants", timeAgo: 7, read: true),
        .init(id: 10, text: "These factors may help you land your dream job, shares an expert. Here's how.", timeAgo: 1)
    ]
    
    var body: some View {
        VStack (spacing: 0) {
            TopSearchBarView()
            Divider()
            
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 0) {
                    ForEach (notifications, id: \.id) { notification in
                        NotificationView(notification: notification)
                    }
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
