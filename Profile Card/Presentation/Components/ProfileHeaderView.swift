//
//  ProfileHeaderView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 8/19/26.
//
import UIKit

final class ProfileHeaderView: UIView {
    
    //MARK: - Views
    
    private let profileImageView : UIImageView = {
        
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemBlue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
        
    }()
    
    private let nameLabel : UILabel = {
        
        let label = UILabel()
        
        label.font = .systemFont(ofSize: 24 , weight: .bold)
        label.textColor = .label
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private let jobLabel : UILabel = {
        
        let label = UILabel()
        
        label.font = .systemFont(ofSize: 16)
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private let contentStackView : UIStackView = {
        
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    
    }()
    
    
    //MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        buildHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")

    }
    
    
    
    //MARK: - Private Methods
    
    
     func configure(with viewData : ProfileViewData) {
        
        nameLabel.text = viewData.name
        jobLabel.text = viewData.job
        profileImageView.image = viewData.image
        
    }
    
    private func configureView() {
        
        backgroundColor = .secondarySystemBackground
        
        layer.cornerRadius = 20
    
    }

    private func buildHierarchy() {
        
        addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(profileImageView)
        contentStackView.addArrangedSubview(nameLabel)
        contentStackView.addArrangedSubview(jobLabel)
        
    
    }
    
   private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            contentStackView.topAnchor.constraint(equalTo: topAnchor , constant: 25),
            contentStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            contentStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            contentStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25)
            
        ])
        
        NSLayoutConstraint.activate([
            
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100)
            
        ])
        
    }
    
}
