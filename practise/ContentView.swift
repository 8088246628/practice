//
//  ContentView.swift
//  practise
//
//  Created by ATEU on 16/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var input : String = ""
    var weatherManager = WeatherManager()
    var body: some View {
        NavigationView {
            VStack{   List(posts) { post in
                Text(post.title)
                
            }
                TextField("hello", text: $input)
                    .keyboardType(.default)
                
                Button("Get Weather") {
                                    weatherManager.getWeather(city: input)
                                }
                
            }
        }.navigationTitle("hello")
    }
}

#Preview {
    ContentView()
}
struct  Post : Identifiable {
  let  id : String
  let  title : String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "World"),
    Post(id: "3", title: "Deekshitha"),
    Post(id: "4", title: "World"),
    Post(id: "5", title: "ok"),
    Post(id: "6", title: "World"),
    
]

