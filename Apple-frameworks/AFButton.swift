//
//  AFButton.swift
//  Apple-frameworks
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(Color.red)
            .foregroundStyle(Color.white)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "AF Button")
}
