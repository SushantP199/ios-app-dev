//
//  InvitationView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct InvitationView: View {
    
    let invitation: InvitationModel
    
    var body: some View {
        HStack (alignment: .center, spacing: 15) {
            Image(invitation.profileImage)
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60, alignment: .leading)
            
            VStack (alignment: .leading, spacing: 2) {
                Text(invitation.name)
                    .font(.system(.body))
                
                Text(invitation.position)
                    .font(.system(.callout))
                    .foregroundColor(.gray)
                
                Text("⚭ \(invitation.mutual) mutual connection")
                    .font(.system(.caption))
                    .foregroundColor(.gray)
            }
            .frame(width: .infinity, alignment: .leading)
            
            Spacer()
            
            HStack (alignment: .center, spacing: 10) {
                Image(systemName: "xmark.circle")
                    .foregroundColor(.gray)
                
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.blue)
            }
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(invitation: .init(id: 0, profileImage: "01", name: "Ram Kohli", position: "Software Tester", mutual: 1))
    }
}
