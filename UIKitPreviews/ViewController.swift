//
//  ViewController.swift
//  UIKitPreviews
//
//  Created by Daniel on 30/07/21.
//

import UIKit
import SwiftUI

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let helloView = UILabel()
        helloView.text = "Hello World"
        helloView.textAlignment = .center
        helloView.textColor = .red
        view.addSubview(helloView)
        view.backgroundColor = .white

        helloView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helloView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            helloView.widthAnchor.constraint(equalTo: view.widthAnchor),
            helloView.heightAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
}

#if DEBUG
import SwiftUI

struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ViewController().showPreview()
    }
}
#endif

