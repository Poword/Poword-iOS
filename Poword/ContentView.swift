//
//  ContentView.swift
//  Poword
//
//  Created by kingcos on 2019/10/27.
//  Copyright © 2019 kingcos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabIndex = 1
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            HomeTabView()
                .tabItem({
                    Image(systemName: selectedTabIndex == 1 ? "house.fill" : "house")
                    Text("Home")
                })
                .tag(1)
            
            AnalyticsTabView()
                .tabItem({
                    Image(systemName: selectedTabIndex == 2 ? "chart.bar.fill" : "chart.bar")
                    Text("Analytics")
                })
                .tag(2)
            
            SettingsTabView()
                .tabItem({
                    Image(systemName: selectedTabIndex == 3 ? "ellipsis.circle.fill" : "ellipsis.circle")
                    Text("More")
                })
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
