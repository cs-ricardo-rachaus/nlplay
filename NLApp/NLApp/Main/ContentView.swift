//
//  ContentView.swift
//  NLApp
//
//  Created by leonel.menezes.lima on 14/08/19.
//  Copyright © 2019 leonel.menezes.lima. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingInput: Bool = false
    let feelings = [
        Feeling(id: 0, name: "Nervoso", text: "hoje fui na padaria e comprei pão e tremi", color: .red),
        Feeling(id: 1, name: "Raiva", text: "hoje gritei com meus colegas de trabalho", color: .black)
    ]
    var body: some View {
        NavigationView {
            VStack {
                AddFeelingButton()
                ForEach(0 ..< feelings.count) { index in
                    FeelingView(titleText: self.feelings[index].name,
                                subtitleText: String(self.feelings[index].id),
                                color: self.feelings[index].color,
                                text: self.feelings[index].text)
                }
            }.navigationBarTitle(Text("History"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
