//
//  FrameworkDetailView.swift
//  Apple-frameworks
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafari: Bool = false
    
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafari = true
            } label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafari, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}
