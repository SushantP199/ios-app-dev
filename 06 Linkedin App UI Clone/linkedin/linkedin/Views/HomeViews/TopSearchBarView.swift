//
//  TopSearchBarView.swift
//  linkedin
//
//  Created by iSushant on 27/12/22.
//

import SwiftUI

struct TopSearchBarView: View {
    var body: some View {
        HStack {
            Image("demo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            
            RoundedRectangle(cornerRadius: 5)
                .fill(.blue.opacity(0.15))
                .frame(width: 300, height: 40, alignment: .leading)
                .overlay {
                    HStack (alignment: .center, spacing: 10) {
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                        
                        Spacer()
                    }
                    .font(.system(.callout))
                    .foregroundColor(.gray)
                    .padding()
                }
            
            Image(systemName: "ellipses.bubble.fill")
                .font(.system(.title2))
                .foregroundColor(.gray)
                .padding(.leading, 10)
        }
        .padding(.horizontal, 15)
        .frame(width: .infinity)
    }
}

struct TopSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopSearchBarView()
    }
}
