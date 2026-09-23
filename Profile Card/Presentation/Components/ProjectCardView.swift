//
//  ProjectCardView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 9/23/26.
//

import UIKit

final class ProjectCardView : UIView {
    
    //MARK: - Views
    private let titleLabel : UILabel = {
      
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .title2)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private let descriptionLabel : UILabel = {
        
        let label  = UILabel()
        label.font = .preferredFont(forTextStyle: .body)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let technologiesLabel : UILabel = {
       
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .body)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let contentStack : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        buildHierarchy()
        setupConstraints()
    }
    
    required init?(coder : NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    
    func configure(with viewData : ProjectCardViewData) {
        
        titleLabel.text = viewData.title
        descriptionLabel.text = viewData.description
        
        //Convertir el array ["Swift", "Ukit"] en un solo String:
        technologiesLabel.text = viewData.technologies.joined(separator: ", ")
    }
    
    private func configureView() {
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 20

        
    }
    
    private func buildHierarchy() {
        
        addSubview(contentStack)
        
        contentStack.addArrangedSubview(titleLabel)
        contentStack.addArrangedSubview(descriptionLabel)
        contentStack.addArrangedSubview(technologiesLabel)
        
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            contentStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            contentStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            contentStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
            
    ])
        
    }
    
}
