//
//  AddFeelingButton.swift
//  NLApp
//
//  Created by leonel.menezes.lima on 15/08/19.
//  Copyright © 2019 leonel.menezes.lima. All rights reserved.
//

import SwiftUI

struct AddFeelingButton: View {
    @State var isShowingInput: Bool = false
    let plusConfig = UIImage.SymbolConfiguration(pointSize: 30)
    
    var body: some View {
        
        HStack {
            GeometryReader { geo in
                Button(action: {
                    self.isShowingInput.toggle()
                }, label: {
                    Image(uiImage: UIImage(systemName: "plus",                                      withConfiguration: self.plusConfig) ?? UIImage())
                    .scaledToFit()
                        .accentColor(.white)
                        .frame(width: 64, height: 64)
                        .background(Color.blue)
                        .cornerRadius(geo.size.width / 2)
                })
                .sheet(isPresented: self.$isShowingInput) {
                    InputView()
                }
            }.frame(width: 64, height: 64)
            Text("Add a feeling")
            Spacer()
        }
        .padding(Edge.Set.leading, 16)
        
    }
}
