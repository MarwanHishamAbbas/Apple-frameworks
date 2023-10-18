//
//  SafariView.swift
//  Apple-frameworks
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI
import SafariServices



struct SafariView: UIViewControllerRepresentable {
    var url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
