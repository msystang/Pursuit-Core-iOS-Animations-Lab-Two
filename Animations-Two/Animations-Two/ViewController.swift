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
    
    lazy var linearBallTopAnchorConstraint: NSLayoutConstraint = {
        self.linearBallView.topAnchor.constraint(equalTo: linearButton.bottomAnchor, constant: 5)
    }()
    
    lazy var easeInBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var easeInBallTopAnchorConstraint: NSLayoutConstraint = {
        self.easeInBallView.topAnchor.constraint(equalTo: easeInButton.bottomAnchor, constant: 5)
    }()
    
    lazy var easeOutBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var easeOutBallTopAnchorConstraint: NSLayoutConstraint = {
        self.easeOutBallView.topAnchor.constraint(equalTo: easeOutButton.bottomAnchor, constant: 5)
    }()
    
    lazy var easeInEaseOutBallView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beachBall")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var easeInEaseOutTopAnchorConstraint: NSLayoutConstraint = {
        self.easeInEaseOutBallView.topAnchor.constraint(equalTo: easeInEaseOutButton.bottomAnchor, constant: 5)
    }()
    
    // MARK: - Settings Button Objects
    lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.isUserInteractionEnabled = true
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(buttonPressedResetBalls(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.isUserInteractionEnabled = true
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(buttonPressedAnimateBalls(sender:)), for: .touchUpInside)
        return button
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
    
    @objc func buttonPressedResetBalls(sender: UIButton) {
        
    }
    
    @objc func buttonPressedAnimateBalls(sender: UIButton) {
        animateLinear()
        animateEaseIn()
        animateEaseOut()
        animateEaseOutEaseIn()
    }

    // MARK: - UI Constraint Methods
    private func addSubviews() {
        self.view.addSubview(buttonStackView)
        self.view.addSubview(linearBallView)
        self.view.addSubview(easeInBallView)
        self.view.addSubview(easeOutBallView)
        self.view.addSubview(easeInEaseOutBallView)
        self.view.addSubview(resetButton)
        self.view.addSubview(animateButton)
    }
    
    private func addConstraints() {
        configureButtonStackViewConstraints()
        configureLinearBallViewConstraints()
        configureEaseInBallViewConstraints()
        configureEaseOutBallViewConstraints()
        configureEaseInEaseOutBallViewConstraints()
        configureResetButtonConstraints()
        configureAnimateButtonConstraints()
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
    
    private func configureLinearBallViewConstraints() {
        self.linearBallView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.linearBallView.centerXAnchor.constraint(equalTo: self.linearButton.centerXAnchor),
            linearBallTopAnchorConstraint,
            self.linearBallView.widthAnchor.constraint(equalToConstant: 70),
            self.linearBallView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func configureEaseInBallViewConstraints() {
        self.easeInBallView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.easeInBallView.centerXAnchor.constraint(equalTo: self.easeInButton.centerXAnchor),
            easeInBallTopAnchorConstraint,
            self.easeInBallView.widthAnchor.constraint(equalToConstant: 70),
            self.easeInBallView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func configureEaseOutBallViewConstraints() {
          self.easeOutBallView.translatesAutoresizingMaskIntoConstraints = false
          
          NSLayoutConstraint.activate([
              self.easeOutBallView.centerXAnchor.constraint(equalTo: self.easeOutButton.centerXAnchor),
              easeOutBallTopAnchorConstraint,
              self.easeOutBallView.widthAnchor.constraint(equalToConstant: 70),
              self.easeOutBallView.heightAnchor.constraint(equalToConstant: 70)
          ])
      }
    
    private func configureEaseInEaseOutBallViewConstraints() {
          self.easeInEaseOutBallView.translatesAutoresizingMaskIntoConstraints = false
          
          NSLayoutConstraint.activate([
              self.easeInEaseOutBallView.centerXAnchor.constraint(equalTo: self.easeInEaseOutButton.centerXAnchor),
              easeInEaseOutTopAnchorConstraint,
              self.easeInEaseOutBallView.widthAnchor.constraint(equalToConstant: 70),
              self.easeInEaseOutBallView.heightAnchor.constraint(equalToConstant: 70)
          ])
      }
    
    private func configureResetButtonConstraints() {
        self.resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.resetButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            self.resetButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 5),
            self.resetButton.widthAnchor.constraint(equalToConstant: 100),
            self.resetButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureAnimateButtonConstraints() {
        self.animateButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.animateButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            self.animateButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 5),
            self.animateButton.widthAnchor.constraint(equalToConstant: 100),
            self.animateButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // MARK: - Private Functions
    private func animateLinear() {
        
        UIView.animate(withDuration: 5.0, delay: 0, options: [.curveLinear], animations: {
            self.linearBallTopAnchorConstraint.constant = 620
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    private func animateEaseOut() {
        
        UIView.animate(withDuration: 5.0, delay: 0, options: [.curveEaseOut], animations: {
            self.easeOutBallTopAnchorConstraint.constant = 620
            self.view.layoutIfNeeded()
        }, completion: nil)
            
    }
    
    private func animateEaseIn() {
        
        UIView.animate(withDuration: 5.0, delay: 0, options: [.curveEaseIn], animations: {
            self.easeInBallTopAnchorConstraint.constant = 620
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
    private func animateEaseOutEaseIn() {
        
        UIView.animate(withDuration: 5.0, delay: 0, options: [.curveEaseInOut], animations: {
            self.easeInEaseOutTopAnchorConstraint.constant = 620
            self.view.layoutIfNeeded()
        }, completion: nil)
    
    }
}

