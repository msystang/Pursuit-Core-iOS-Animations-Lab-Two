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
        button.addTarget(self, action: #selector(buttonPressedHideBall(sender:)), for: .touchUpInside)
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
        button.addTarget(self, action: #selector(buttonPressedHideBall(sender:)), for: .touchUpInside)
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
        button.addTarget(self, action: #selector(buttonPressedHideBall(sender:)), for: .touchUpInside)
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
        button.addTarget(self, action: #selector(buttonPressedHideBall(sender:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: - ImageView Objects
    lazy var linearBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var easeInBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var easeOutBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var easeInEaseOutBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
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
    @objc func buttonPressedHideBall(sender: UIButton) {
        switch sender.tag {
            case 0:
                if linearBallView.isHidden {
                    linearBallView.isHidden = false
                } else {
                    linearBallView.isHidden = true
                }
            case 1:
                if easeInBallView.isHidden {
                    easeInBallView.isHidden = false
                } else {
                    easeInBallView.isHidden = true
                }
            case 2:
                if easeOutBallView.isHidden {
                    easeOutBallView.isHidden = false
                } else {
                easeOutBallView.isHidden = true
                }
            case 3:
                if easeInEaseOutBallView.isHidden {
                    easeInEaseOutBallView.isHidden = false
                } else {
                easeInEaseOutBallView.isHidden = true
                }
            default:
                print("This shouldn't happen")
        }
    }

    // MARK: - UI Constraint Methods
    private func addSubviews() {
        self.view.addSubview(buttonStackView)
        self.view.addSubview(linearBallView)
        self.view.addSubview(easeInBallView)
        self.view.addSubview(easeOutBallView)
        self.view.addSubview(easeInEaseOutBallView)
    }
    
    private func addConstraints() {
        configureButtonStackViewConstraints()
        configureLinearBallViewConstraints()
        configureEaseInBallViewConstraints()
        configureEaseOutBallViewConstraints()
        configureEaseInEaseOutBallViewConstraints()
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
    
    private func configureLinearBallViewConstraints() {
        self.linearBallView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.linearBallView.centerXAnchor.constraint(equalTo: self.linearButton.centerXAnchor),
            self.linearBallView.topAnchor.constraint(equalTo: linearButton.bottomAnchor, constant: 5),
            self.linearBallView.widthAnchor.constraint(equalToConstant: 70),
            self.linearBallView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func configureEaseInBallViewConstraints() {
        self.easeInBallView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.easeInBallView.centerXAnchor.constraint(equalTo: self.easeInButton.centerXAnchor),
            self.easeInBallView.topAnchor.constraint(equalTo: easeInButton.bottomAnchor, constant: 5),
            self.easeInBallView.widthAnchor.constraint(equalToConstant: 70),
            self.easeInBallView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func configureEaseOutBallViewConstraints() {
          self.easeOutBallView.translatesAutoresizingMaskIntoConstraints = false
          
          NSLayoutConstraint.activate([
              self.easeOutBallView.centerXAnchor.constraint(equalTo: self.easeOutButton.centerXAnchor),
              self.easeOutBallView.topAnchor.constraint(equalTo: easeOutButton.bottomAnchor, constant: 5),
              self.easeOutBallView.widthAnchor.constraint(equalToConstant: 70),
              self.easeOutBallView.heightAnchor.constraint(equalToConstant: 70)
          ])
      }
    
    private func configureEaseInEaseOutBallViewConstraints() {
          self.easeInEaseOutBallView.translatesAutoresizingMaskIntoConstraints = false
          
          NSLayoutConstraint.activate([
              self.easeInEaseOutBallView.centerXAnchor.constraint(equalTo: self.easeInEaseOutButton.centerXAnchor),
              self.easeInEaseOutBallView.topAnchor.constraint(equalTo: easeInEaseOutButton.bottomAnchor, constant: 5),
              self.easeInEaseOutBallView.widthAnchor.constraint(equalToConstant: 70),
              self.easeInEaseOutBallView.heightAnchor.constraint(equalToConstant: 70)
          ])
      }
}

