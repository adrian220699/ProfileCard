//
//  ActionView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 8/20/26.
//

import UIKit

final class ActionView : UIView {
    
    //MARK: - Views
    
    private let followButton : PressableButton = {
      
        let button = PressableButton()
        
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 17
        button.translatesAutoresizingMaskIntoConstraints = false
    
        return button
    
    }()
    
    private let messageButton : PressableButton = {
       
        let button = PressableButton()
        
        button.setTitle("Message", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 17
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //MARK: - Actions
    
    var onFollowTapped: (() -> Void)?
    var onMessageTapped: (() -> Void)?
    
    
    //MARK: - StackView
    
    private let contentStackView : UIStackView = {
        
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
       return stackView
    }()
    
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        buildHierarchy()
        setupConstraints()
        
        followButton.addTarget(
            self,
            action: #selector(followButtonTapped),
            for: .touchUpInside
        )

        messageButton.addTarget(
            self,
            action: #selector(messageButtonTapped),
            for: .touchUpInside
        )
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")

    }
    
    
    //MARK: - Private Methods
    
    
    private func configureView() {
        
        backgroundColor = .secondarySystemBackground
        
        layer.cornerRadius = 20
    
    }

    private func buildHierarchy() {
        
        addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(followButton)
        contentStackView.addArrangedSubview(messageButton)
        
    
    }
    
   private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            contentStackView.topAnchor.constraint(equalTo: topAnchor , constant: 25),
            contentStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            contentStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            contentStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25)
            
        ])
       
    }
    
    @objc private func followButtonTapped() {
        
        onFollowTapped?()
    
    }
    
    @objc private func messageButtonTapped() {
        onMessageTapped?()
    }
  
}
