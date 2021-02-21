//
//  HomeViewController.swift
//  MIT Blueprint
//
//  Created by Kenneth Choi on 2/21/21.
//

import UIKit
import Foundation

class HomeViewController: UIViewController{
    
    let headLabel = UILabel()
    let button00 = UIButton()
    let button01 = UIButton()
    let button02 = UIButton()
    
    override func viewDidLoad() {
        
        self.view.addSubview(headLabel)
        headLabel.backgroundColor = .purple
        headLabel.text = "Moodify"
        headLabel.textColor = .white
        headLabel.textAlignment = .center
        
        headLabel.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            headLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            headLabel.heightAnchor.constraint(equalToConstant: 50),
            headLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            headLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
            
        ])
        
    let standardConfiguration = UIImage.SymbolConfiguration(scale: .large)
    let smileySymbol = UIImage(systemName: "smiley", withConfiguration: standardConfiguration)!
    let smileySymbolClicked = UIImage(systemName: "smiley.fill", withConfiguration: standardConfiguration)!

    let whiteSmiley = smileySymbol.withTintColor(.white, renderingMode: .alwaysOriginal)
    let whiteSmileyClicked = smileySymbolClicked.withTintColor(.white, renderingMode: .alwaysOriginal)

        self.view.addSubview(button00)
        button00.setImage(whiteSmiley, for: .normal)
        button00.setImage(whiteSmileyClicked, for: .highlighted)
        button00.backgroundColor = .black
        //button00.setTitle("Sad", for: .normal)
        //button00.setTitle("Pressed", for: .highlighted)
        //button00.setTitleColor(.white, for: .normal)
        //button00.setTitleColor(.green, for: .highlighted)

        button00.layer.cornerRadius = 20
        
        button00.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button00.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8),
            button00.heightAnchor.constraint(equalToConstant: 100),
            button00.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5),
            button00.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -262)
            
        ])

        self.view.addSubview(button01)
        button01.backgroundColor = .orange
        button01.setTitle("Okay", for: .normal)
        button01.setTitle("Pressed", for: .highlighted)
        button01.setTitleColor(.white, for: .normal)
        button01.setTitleColor(.green, for: .highlighted)
        button01.contentHorizontalAlignment = .center
        
        button01.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button01.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8),
            button01.heightAnchor.constraint(equalToConstant: 100),
            button01.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 132),
            button01.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -132)
            
        ])
        
        self.view.addSubview(button02)
        button02.backgroundColor = .green
        button02.setTitle("Happy", for: .normal)
        button02.setTitle("Pressed", for: .highlighted)
        button02.setTitleColor(.white, for: .normal)
        button02.setTitleColor(.green, for: .highlighted)
        button02.contentHorizontalAlignment = .center
        
        button02.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button02.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8),
            button02.heightAnchor.constraint(equalToConstant: 100),
            button02.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 262),
            button02.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5)
            
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
