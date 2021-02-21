//
//  HomeViewController.swift
//  MIT Blueprint
//
//  Created by Kenneth Choi on 2/21/21.
//

import UIKit

class HomeViewController: UIViewController{
    
    let headLabel = UILabel()
    let button00 = UIButton()
    
    override func viewDidLoad() {
        
        self.view.addSubview(headLabel)
        headLabel.backgroundColor = .blue
        headLabel.text = "Hello World"
        headLabel.textColor = .white
        headLabel.textAlignment = .center
        
        headLabel.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            headLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            headLabel.heightAnchor.constraint(equalToConstant: 50),
            headLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            headLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
            
        ])
        
        self.view.addSubview(button00)
        button00.backgroundColor = .blue
        button00.setTitle("Sad", for: .normal)
        button00.setTitle("Pressed", for: .highlighted)
        button00.setTitleColor(.white, for: .normal)
        button00.setTitleColor(.green, for: .highlighted)
        button00.contentHorizontalAlignment = .center
        
        button00.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button00.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8),
            button00.heightAnchor.constraint(equalToConstant: 100),
            button00.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5),
            button00.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -266)
            
        ])
        
    }
}

import SwiftUI
// This struct from SwiftUI shows us the content preview in the canvas page.
struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        

            func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
                return UINavigationController(rootViewController: HomeViewController())
            }

            func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {

            }

        }
}
