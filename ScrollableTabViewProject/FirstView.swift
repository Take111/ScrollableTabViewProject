//
//  FirstView.swift
//  ScrollableTabViewProject
//
//  Created by Chikato Takenouchi on 2021/08/28.
//

import SwiftUI

struct FirstView: View {

    init() {
        print("FirstView init")
    }

    var body: some View {
        Menu("Menu") {
            Button(action: { }, label: {
                Text("Button1")
            })
            Button(action: { }, label: {
                Text("Button2")
            })
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
