//
//  ContentView.swift
//  ScrollableTabViewProject
//
//  Created by Chikato Takenouchi on 2021/08/28.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TabViewSelectView()) {
                    Text("TabView")
                }
                NavigationLink(destination: ButtonSelectView()) {
                    Text("ButtonSelectView(ZStack)")
                }
            }
            .navigationTitle("Content")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
