//
//  ViewController.swift
//  Animations-Two
//
//  Created by Sunni Tang on 10/14/19.
//  Copyright © 2019 Sunni Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Button StackView Objects
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
        button.tag = 0
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
        button.tag = 1
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
        button.tag = 2
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
        button.tag = 3
        return button
    }()
    
    // MARK: - ImageView StackView Objects
    lazy var ballStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [linearBallView, easeInBallView, easeOutBallView, easeInEaseOutBallView])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
         return stackView
    }()
    
    lazy var linearBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        imageView.tag = 0
        return imageView
    }()
    
    lazy var easeInBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        imageView.tag = 1
        return imageView
    }()
    
    lazy var easeOutBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        imageView.tag = 2
        return imageView
    }()
    
    lazy var easeInEaseOutBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        imageView.tag = 3
        return imageView
    }()
    
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addSubviews()
        addConstraints()
    }

    // MARK: - UI Action Methods


    // MARK: - UI Constraint Methods
    private func addSubviews() {
        self.view.addSubview(buttonStackView)
        self.view.addSubview(ballStackView)
    }
    
    private func addConstraints() {
        configureButtonStackViewConstraints()
        configureBallStackViewConstraints()
    }
    
    private func configureButtonStackViewConstraints() {
        self.buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.buttonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.buttonStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            self.buttonStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            self.buttonStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureBallStackViewConstraints() {
        self.ballStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.ballStackView.topAnchor.constraint(equalTo: self.buttonStackView.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            self.ballStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            self.ballStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            self.ballStackView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

