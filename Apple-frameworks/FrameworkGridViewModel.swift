//
//  FrameworkGridViewModel.swift
//  Apple-frameworks
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

// ObservableObject => enable class to broadcast (publish) information
// final => if I'll not subclass it make it final
final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
// Everytime selectedFramework changes this triggers
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    
}
