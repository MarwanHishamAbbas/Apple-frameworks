//
//  FrameworkGridView.swift
//  Apple-frameworks
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
//Presist State Data
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Apple Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                    FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework ?? MockData.sampleFramework)
                })
                
        
        }
    }
}

#Preview {
    FrameworkGridView()
}

