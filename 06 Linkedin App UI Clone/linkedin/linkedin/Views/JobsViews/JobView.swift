//
//  JobView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct JobView: View {
    
    let job: JobModel
    
    var body: some View {
        HStack (alignment: .top, spacing: 15) {
            Image(job.companyLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            VStack (alignment: .leading, spacing: 3) {
                Text(job.role)
                    .font(.system(.title2))
                    .fontWeight(.medium)
                
                Text(job.companyName)
                    .font(.system(.body))
                
                Text(job.location)
                    .font(.system(.body))
                    .foregroundColor(.gray)
                
                HStack {
                    Text("\(job.hourAgo) hours ago")
                        .font(.system(.subheadline))
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                    
                    if job.isEasyApply {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 2, height: 2)
                        
                        Image("linkedin")
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                        Text("Easy Apply")
                            .font(.system(.callout))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
            }
            
            Image(systemName: "bookmark")
                .font(.title)
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
    }
}

struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        JobView(job: .init(id: 0, companyLogo: "linkedin", role: "SDE-1", companyName: "Linkedin", location: "Mumbai, Maharashtra, India (Hybrid)", hourAgo: 2))
    }
}
