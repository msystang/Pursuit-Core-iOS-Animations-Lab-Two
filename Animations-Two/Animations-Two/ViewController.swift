//
//  ViewController.swift
//  Animations-Two
//
//  Created by Sunni Tang on 10/14/19.
//  Copyright © 2019 Sunni Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [linearButton, easeInButton, easeOutButton, easeInEaseOutButton])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    lazy var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.isUserInteractionEnabled = true
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseIn", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.isUserInteractionEnabled = true
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    lazy var easeOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseOut", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.isUserInteractionEnabled = true
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    lazy var easeInEaseOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseInEastOut", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.isUserInteractionEnabled = true
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addSubviews()
        addConstraints()
    }

    private func addSubviews() {
        self.view.addSubview(buttonStackView)
    }
    
    private func addConstraints() {
        configureButtonStackViewConstraints()
    }
    
    private func configureButtonStackViewConstraints() {
        self.buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.buttonStackView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            self.buttonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.buttonStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            self.buttonStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -5)
        ])
    }
}

