//
//  InputView.swift
//  NLApp
//
//  Created by leonel.menezes.lima on 14/08/19.
//  Copyright © 2019 leonel.menezes.lima. All rights reserved.
//

import SwiftUI

struct InputView: View {
    
    @State var input: String = ""
    
    var body: some View {
        TextField("Digite algo", text: $input)
        
        
    }
    
}
