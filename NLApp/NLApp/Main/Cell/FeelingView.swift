//
//  FeelingView.swift
//  NLApp
//
//  Created by leonel.menezes.lima on 15/08/19.
//  Copyright © 2019 leonel.menezes.lima. All rights reserved.
//

import SwiftUI

struct FeelingView: View {
    let titleText: String
    let subtitleText: String
    let color: Color
    let text: String
    
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .frame(width: 1)
                
                Circle()
                    .foregroundColor(color)
                    .frame(width: 25, height: 25)
                    .padding([.leading, .trailing], 32)
                
            }
            HStack {
                Image("image1")
                .padding([.leading, .trailing], 8)
                
                VStack(alignment: .leading) {
                    Text(titleText)
                        .font(Font.system(size: 20))
                    Spacer()
                    Text(text)
                        .foregroundColor(.gray)
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
