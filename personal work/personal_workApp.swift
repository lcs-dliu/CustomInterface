//
//  StopWatchProjectApp.swift
//  StopWatchProject
//
//  Created by Chenxi Liu on 2023/11/2.
//

import SwiftUI

@main
struct StopWatchProjectApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(selection: Binding.constant(1)) {
                
                ContentView()
                    .tabItem{
                        Image(systemName: "calendar")
                        Text("Today")
                    }
                    .tag(1)

                Text("Entries")
                    .tabItem{
                        Image(systemName: "list.dash")
                        Text("Entries")
                    }
                    .tag(2)
                
                Text("Library")
                    .tabItem{
                        Image(systemName: "lightbulb.max.fill")
                        Text("Libraty")
                    }
                    .tag(3)

                Text("Settings")
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(4)
                
            }
            // Change the accent color for the currently active tab item
            .accentColor(.black)
            // Ensure tab items are not acitve remain visibel
            .preferredColorScheme(.dark)
        }
    }
}
