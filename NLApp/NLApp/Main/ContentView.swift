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
    let sentiments = [Sentiment(id: 0, text: "Nervoso"), Sentiment(id: 1, text: "Raiva")]
    var body: some View {
        NavigationView {
            VStack {
                AddFeelingButton()
                ForEach(sentiments) {_ in
                    FeelingView()
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
