//
//  ButtonSelectView.swift
//  ScrollableTabViewProject
//
//  Created by Chikato Takenouchi on 2021/08/29.
//

import SwiftUI

struct ButtonSelectView: View {

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
            ZStack {
                FirstView()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 92)
                    .isHidden(selectionIndex != 0)
                SecondView()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 92)
                    .isHidden(selectionIndex != 1)
            }
        }
    }
}

struct ButtonSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSelectView()
    }
}

extension View {

    @ViewBuilder func isHidden(_ hidden: Bool) -> some View {
        if hidden {
            self.hidden()
        } else {
            self
        }
    }
}
