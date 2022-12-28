//
//  JobsView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct JobsView: View {
    
    let jobs: [JobModel] = [
        .init(id: 0, companyLogo: "adidas", role: ".NET Developer", companyName: "Adidas", location: "Hyderabad, Telengana, India (On-site)", hourAgo: 11),
        .init(id: 1, companyLogo: "apple", role: "Software Engineer", companyName: "Apple Inc.", location: "Singapore (Remote)", hourAgo: 2),
        .init(id: 2, companyLogo: "huawei", role: "Front End Enginner", companyName: "Huawei", location: "Europe (On-site)", hourAgo: 5),
        .init(id: 3, companyLogo: "ibm", role: "Data Scientist", companyName: "IBM", location: "Banglore Urban, Karnataka, India (Hybrid)", hourAgo: 7, isEasyApply: false),
        .init(id: 4, companyLogo: "mcdonalds", role: "Finance Analyst", companyName: "Mc Donalds", location: "India (On-site)", hourAgo: 6, isEasyApply: false),
        .init(id: 5, companyLogo: "microsoft", role: "SDE-3", companyName: "Microsoft", location: "India (Remote)", hourAgo: 1),
        .init(id: 6, companyLogo: "sony", role: "Mobile App Developer", companyName: "Sony", location: "Mumbai, Maharashtra, India (Hybrid)", hourAgo: 10),
        .init(id: 7, companyLogo: "uber", role: "Flutter Developer", companyName: "Uber", location: "Pune, Maharashtra, India (On-site)", hourAgo: 11, isEasyApply: false),
        .init(id: 8, companyLogo: "linkedin", role: "SDE-1", companyName: "Linkedin", location: "Mumbai, Maharashtra, India (Hybrid)", hourAgo: 2),
    ]
    
    var body: some View {
        VStack {
            TopSearchBarView()
            
            HStack {
                Spacer()
                
                Image(systemName: "bookmark")
                    .foregroundColor(.gray)
                    .padding(1)
                
                Text("My jobs")
                
                Spacer()
                
                Image(systemName: "square.and.pencil")
                    .foregroundColor(.gray)
                    .padding(1)
                
                Text("Post a job")
                
                Spacer()
            }
            .font(.system(.title2))
            .padding()
            
            Rectangle()
                .fill(.gray.opacity(0.2))
                .frame(width: .infinity, height: 15)
            
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Recommended for you")
                            .font(.system(.title3))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding()
                    
                    ForEach (jobs, id: \.id) { job in
                        JobView(job: job)
                        Divider()
                            .padding(.leading, 65)
                    }
                    
                }
            }
        }
    }
}

struct JobsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsView()
    }
}
