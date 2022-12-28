//
//  HomeView.swift
//  linkedin
//
//  Created by iSushant on 27/12/22.
//

import SwiftUI

struct HomeView: View {
    
    let posts: [PostModel] = [
        .init(id: 0, profileImage: "00", userName: "Sushant Pagam", followers: 234, timeAgo: 10, caption: "Completed a new assignment of linkedin clone using SwiftUI framework", postImage: "3"),
        .init(id: 1, profileImage: "01", userName: "Hitest Choudhary", followers: 30000, timeAgo: 1, caption: "Welcome to my full stack web development course, the first sigma batch at pwskills", postImage: "2"),
        .init(id: 2, profileImage: "02", userName: "Ranveer Allahbadia", followers: 7934, timeAgo: 30, caption: "Launched new podcast on The Ranveer Show HINDI", postImage: "1"),
        .init(id: 3, profileImage: "03", userName: "Akilesh Maheshwari", followers: 670, timeAgo: 59, caption: "Edit like pro, this picture edited with chroma effects", postImage: "6"),
        .init(id: 4, profileImage: "04", userName: "Sundar Pichai", followers: 873, timeAgo: 1, caption: "Google launching something big in 2023, stay tuned.", postImage: "8")
    ]
    
    var body: some View {
        VStack {
            TopSearchBarView()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach (posts, id: \.id) { post in
                        PostCardView(post: post)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
