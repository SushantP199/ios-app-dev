//
//  MyNetworkView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct MyNetworkView: View {
    
    let invitations: [InvitationModel] = [
        .init(id: 0, profileImage: "01", name: "John Roy", position: "SDE1 at Amazon", mutual: 23),
        .init(id: 1, profileImage: "02", name: "Sumit Mahajan", position: "UI/UX Designer at Adobe", mutual: 75),
        .init(id: 2, profileImage: "03", name: "Navin Mhatre", position: "Software Engineer", mutual: 10),
        .init(id: 3, profileImage: "04", name: "Shruti Shah", position: "Talent Acquisition at City", mutual: 9),
        .init(id: 4, profileImage: "05", name: "Navin Reddy", position: "Java Trainer at PWSkills", mutual: 6),
        .init(id: 5, profileImage: "01", name: "Mohit Nakawa", position: "DevOps Lead at CentOS", mutual: 90),
        .init(id: 6, profileImage: "02", name: "Sin Chan", position: "AR/VR & Games at Disney", mutual: 7),
        .init(id: 7, profileImage: "9", name: "Kitre Su", position: "Innovater at Factory", mutual: 5),
        .init(id: 8, profileImage: "10", name: "Crist Ham", position: "Mechanical Engineer", mutual: 2)
    ]
    
    var body: some View {
        VStack {
            TopSearchBarView()
            
            HStack {
                Text("Manage my network")
                    .foregroundColor(.blue)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .font(.system(.title3))
            .padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.2))
                .frame(width: .infinity, height: 8)
            
            ScrollView (.vertical, showsIndicators: false) {
                HStack {
                    Text("Invitations")
                        .foregroundColor(.blue)
                        
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .font(.system(.title3))
                .padding(.horizontal)
                
                Divider()
                
                ForEach (invitations, id: \.id) { invitation in
                    InvitationView(invitation: invitation)
                    
                    Divider()
                        .padding()
                }
                
            }
        }
    }
}

struct MyNetworkView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkView()
    }
}
