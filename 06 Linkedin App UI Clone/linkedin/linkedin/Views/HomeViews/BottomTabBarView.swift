//
//  BottomTabBarView.swift
//  linkedin
//
//  Created by iSushant on 29/12/22.
//

import SwiftUI

struct BottomTabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    
                    Text("Home")
                }
                .tint(.black)
            
            MyNetworkView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    
                    Text("My Network")
                }
            
            AddPostView()
                .tabItem {
                    Image(systemName: "plus.square.fill")
                    
                    Text("Post")
                }
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                    
                    Text("Notifications")
                }
            
            JobsView()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    
                    Text("Jobs")
                }
            
        }
        .tint(.black)
    }
}

struct BottomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabBarView()
    }
}
