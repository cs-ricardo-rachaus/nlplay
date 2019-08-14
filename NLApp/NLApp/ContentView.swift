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
    
    var body: some View {
        NavigationView {
            VStack {
                AddFeelingButton()
                List(1...3) { item in
                    FeelingView()
                }
            }.navigationBarTitle(Text("History"))
        }
    }
}

struct AddFeelingButton: View {
    @State var isShowingInput: Bool = false
    
    var body: some View {
        Button("show") {
            self.isShowingInput.toggle()
        }.sheet(isPresented: $isShowingInput) {
            InputView()
        }
    }
}

struct FeelingView: View {
    var body: some View {
        HStack {
            Rectangle().overlay(Color.red)
            HStack {
                        Spacer()
                        Image("image1")
                        .padding(.trailing, 8)
                        VStack {
                            Text("ASDASDASDA")
                            Text("subtitulo")
                        }
                    }
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: .init(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 0.2), radius: 10)
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
