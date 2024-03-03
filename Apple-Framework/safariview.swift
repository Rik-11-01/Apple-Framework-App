//
//  safariview.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 04/03/24.
//

import SwiftUI
import SafariServices
import Foundation

struct SafariView: UIViewControllerRepresentable{
        
    let url:URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
            SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>)
    { }
    
}

