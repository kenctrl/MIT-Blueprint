//
//  HomeViewController.swift
//  MIT Blueprint
//
//  Created by Kenneth Choi on 2/21/21.
//

import UIKit

class HomeViewController: UIViewController{
    
    let myLabel = UILabel()
    
    override func viewDidLoad() {
        
        self.view.addSubview(myLabel)
        myLabel.backgroundColor = .blue
        myLabel.text = "Hello World"
        myLabel.textColor = .white
        myLabel.textAlignment = .center
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            myLabel.heightAnchor.constraint(equalToConstant: 50),
            myLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            myLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
            
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
