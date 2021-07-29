//
//  UIViewCOntroller+Preview.swift
//  UIKitPreviews
//
//  Created by Daniel on 30/07/21.
//

import SwiftUI

extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {

        let viewController: UIViewController
        
        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    }
    
    func showPreview() -> some View {
        Preview(viewController: self)
    }
}
