//
//  ContentView.swift
//  personal work
//
//  Created by Chenxi Liu on 2023/11/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        //Second layer (rest of ---interface)
        VStack {
            //symbol
            HStack{
                Spacer()
                Image(systemName:"text.bubble")
                    .padding(.trailing)
            }
        //today
            HStack{
            Text("Today")
                .font(Font.title.weight(.black))
                .padding(.leading)
           Spacer()
            
        }
            Spacer()
            //tuesday ...
            HStack{
               Text("Tuesday, January 12")
                    .padding(.leading)
               Spacer()
            }
            Spacer()
            Spacer()
            //four square
            HStack{
              Spacer()
              ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 90, height: 90)
                VStack{
                    HStack {
                        Text("2")
                            .foregroundColor(.blue)
                            .padding(.leading)
                        Spacer()
                    }
                    HStack{
                        Image(systemName: "list.dash")
                            .foregroundColor(.purple)
                        Text("Entries")
                            .foregroundColor(.gray)
                    }
                }
            }
                Spacer()
                
                ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 90, height: 90)
                VStack{
                    Text("52")
                        .foregroundColor(.blue)
                    HStack{
                        Image(systemName: "leaf.fill")
                            .foregroundColor(.gray)
                        Text("Words")
                            .foregroundColor(.gray)
                    }
                }
            }
              ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 90, height: 90)
                VStack{
                    Text("2 days")
                        .foregroundColor(.blue)
                    HStack{
                        Image(systemName: "flame.fill")
                            .foregroundColor(.gray)
                        Text("Streaks")
                            .foregroundColor(.gray)
                    }
                }
            }
              ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 90, height: 90)
                VStack{
                    Text("3 weeks")
                        .foregroundColor(.blue)
                    HStack{
                        Image(systemName: "flame.fill")
                            .foregroundColor(.gray)
                        Text("Streaks")
                            .foregroundColor(.gray)
                    }
                }
            }
            }
        
            Spacer()
            Spacer()
            
                    // List of times
                    List{
                        //weekly review
                        VStack {
                            HStack {
                                Text("Weekly review")
                                .font(.headline)
                                Spacer()
                            }
                            HStack {
                                Text("Nearly ever morning I was able ot jump into my most important task - that meade a big difference")
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                Text("4:05 PM")
                                    .font(.footnote)
                                Spacer()
                            }
                        }
                        //daily gratitude
                        VStack {
                            HStack {
                                Text("Daily Gratitude")
                                    .font(.headline)
                                Spacer()
                            }
                            HStack {
                                Text("Today, I'm greatful for")
                                Spacer()
                            }
                            HStack {
                                Text("1. Being able to sleep when I'm sick")
                                Spacer()
                            }
                            HStack {
                                Text("2. Last night pasta dinner. So delicious!")
                                Spacer()
                            }
                            HStack {
                                Text("My bike which I've been riding a lot")
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                Text("8:00 PM")
                                    .font(.footnote)
                                Spacer()
                            }
                        }
                    }
                    .listStyle(.plain)
                }
        
           .padding()
    }
    
}

#Preview {
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
        
        Text("Plus")
            .tabItem {
                Circle()
                    .foregroundColor(.blue)
            }
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
    .preferredColorScheme(.light)
}

