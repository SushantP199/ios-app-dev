//
//  PostCardView.swift
//  linkedin
//
//  Created by iSushant on 27/12/22.
//

import SwiftUI

struct PostActionModel {
    var id: Int
    var image: String
    var name: String
}

struct PostCardView: View {
    
    let post: PostModel
    
    let postActions: [PostActionModel] = [
        .init(id: 0, image: "hand.thumbsup", name: "Like"),
        .init(id: 1, image: "text.bubble", name: "Comment"),
        .init(id: 2, image: "repeat", name: "Repost"),
        .init(id: 3, image: "paperplane.fill", name: "Send")
    ]
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.gray.opacity(0.2))
                .frame(width: .infinity, height: 8)
            
            HStack (alignment: .center, spacing: 15) {
                Image(post.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: .leading)
                
                VStack (alignment: .leading, spacing: 2) {
                    Text(post.userName)
                        .font(.system(.body))

                    Text("\(post.followers) followers")
                        .font(.system(.callout))
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("\(post.timeAgo)m")
                            .font(.system(.caption))
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 3, height: 3)
                        
                        Image(systemName: "globe")
                            .font(.caption)
                    }
                    .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.callout)
                    .rotationEffect(.degrees(90))
                    .foregroundColor(.gray)
            }
            .padding([.leading, .top, .trailing])
            
            Text(post.caption)
                .font(.system(.body))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Image(post.postImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity)
            
            Divider()
                .padding()
            
            HStack (spacing: 50) {
                ForEach (postActions, id: \.id) { postAction in
                    VStack {
                        Image(systemName: postAction.image)
                        Text(postAction.name)
                    }
                    .foregroundColor(.gray)
                    .font(.system(.callout))
                }
            }
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(post: .init(id: 0, profileImage: "00", userName: "Sushant Pagam", followers: 234, timeAgo: 20, caption: "Want to learn SwiftUI development, then welcome you are abosultely right place.", postImage: "3"))
    }
}
