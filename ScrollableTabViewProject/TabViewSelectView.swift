//
//  TabViewSelectView.swift
//  ScrollableTabViewProject
//
//  Created by Chikato Takenouchi on 2021/08/29.
//

import SwiftUI

struct TabViewSelectView: View {
    @State var selectionIndex = 0

    enum ViewType: CaseIterable, View {
        case first
        case second

        var body: some View {
            switch self {
            case .first:
                FirstView()
            case .second:
                SecondView()
            }
        }
    }

    var body: some View {
        VStack {
            VStack {
                Spacer()
                    .frame(height: 32)
                HStack {
                    HStack {
                        Button(action: {
                            selectionIndex = 0
                        }, label: {
                            Image(systemName: "pencil")
                                .foregroundColor(.black)
                            Text("FirstView")
                                .foregroundColor(.black)
                        })
                        .frame(width: 124, height: 32)
                        .padding(EdgeInsets(.init(top: 0, leading: 12, bottom: 0, trailing: 12)))
                        .background(selectionIndex == 0 ? Color.gray : .white)
                        .cornerRadius(12)
                    }
                    Spacer()
                        .frame(width: 24)
                    HStack {
                        Button(action: {
                            selectionIndex = 1
                        }, label: {
                            Image(systemName: "trash")
                                .foregroundColor(.black)
                            Text("SecondView")
                                .foregroundColor(.black)
                        })
                        .frame(width: 124, height: 32)
                        .padding(EdgeInsets(.init(top: 0, leading: 12, bottom: 0, trailing: 12)))
                        .background(selectionIndex == 1 ? Color.gray : .white)
                        .cornerRadius(12)
                    }
                }
                Spacer()
            }
            .frame(height: 48)
            TabView(selection: $selectionIndex,
                    content:  {
                        ForEach(0..<ViewType.allCases.count) { index in
                            ViewType.allCases[index].body
                        }
                    })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .navigationTitle("TabViewSelectView")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TabViewSelectView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSelectView()
    }
}
