//
//  AddPostView.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import SwiftUI

struct AddPostView: View {
    var body: some View {
        VStack {
            HStack (alignment: .center, spacing: 15) {
                Image(systemName: "xmark")
                    .foregroundColor(.black.opacity(0.7))
                    .font(.system(.title2))
                
                Spacer()
                
                Image(systemName: "clock")
                    .foregroundColor(.black.opacity(0.7))
                    .font(.system(.title2))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.gray.opacity(0.3))
                    .frame(width: 80, height: 40, alignment: .center)
                    .overlay {
                        Text("Post")
                            .font(.system(.title3))
                            .foregroundColor(.black.opacity(0.7))
                    }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.top, 5)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
            
            HStack (alignment: .center, spacing: 30) {
                Image("demo2")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: .leading)
                
                VStack (alignment: .leading, spacing: 5) {
                    Text("Sushant Pagam")
                        .font(.system(.body))
                        .fontWeight(.medium)
                    
                    HStack (alignment: .center, spacing: 3) {
                        Image(systemName: "globe")
                        
                        Text("Anyone")
                             .fontWeight(.medium)
                        
                        Image(systemName: "arrowtriangle.down.fill")
                     }
                     .font(.system(.callout))
                     .foregroundColor(.black.opacity(0.7))
                     .padding(.horizontal, 6)
                     .padding(.vertical, 3)
                     .overlay {
                         RoundedRectangle(cornerRadius: 15)
                             .stroke(.black.opacity(0.7), lineWidth: 2)
                     }
                }
                
                Spacer()
                
            }
            .padding(.top, 20)
            
            Text("What do you want to talk about ?")
                .foregroundColor(.gray)
                .font(.system(size: 22))
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Spacer()
            
            HStack (alignment: .center, spacing: 25) {
                Image(systemName: "camera.fill")
                    .font(.system(.title2))
                
                Image(systemName: "video.fill")
                    .font(.system(.title2))
                
                Image(systemName: "photo")
                    .font(.system(.title2))
                
                Image(systemName: "ellipsis")
                    .font(.system(.title2))
                
                Spacer()
                
                HStack {
                    Image(systemName: "text.bubble")
                    
                    Text("Anyone")
                }
                .font(.system(.body))
                
            }
            .foregroundColor(.black.opacity(0.7))
            .padding()
        }
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}
