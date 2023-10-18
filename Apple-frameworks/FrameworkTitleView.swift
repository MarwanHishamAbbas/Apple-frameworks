//
//  FrameworkTitleView.swift
//  Apple-frameworks
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName).resizable().frame(width: 80, height: 80)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
    
        

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
