//
//  FeelingView.swift
//  NLApp
//
//  Created by leonel.menezes.lima on 15/08/19.
//  Copyright © 2019 leonel.menezes.lima. All rights reserved.
//

import SwiftUI

struct FeelingView: View {
    var body: some View {
        HStack {
            ZStack {
                
                Rectangle()
                    .frame(width: 1.5)
                .padding(.leading, 16 - (25/2))
                
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 25, height: 25)
                    .padding([.leading, .trailing], 32)
                
            }
            HStack {
                Image("image1")
                .padding([.leading, .trailing], 8)
                
                VStack {
                    Text("ASDASDASDA")
                    Text("subtitulo")
                }
                
                Spacer()
        
            }
            .padding(16)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .init(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 0.2), radius: 10)
        }
    }
}
