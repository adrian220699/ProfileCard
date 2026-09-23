//
//  ProjectsView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 9/23/26.
//

import UIKit

final class ProjectsView: UIView {
    
    //MARK: - Views
    
    private let titleLabel: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.textColor = .label
        label.text = "Projects"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()

    private let projectsStackView : UIStackView = {
       
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private let contentStackView: UIStackView = {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        buildHierachy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - Private Methods
    
    func configure(with viewData : [ProjectCardViewData]) {
        
        for project in viewData {
            
            let cardView  = ProjectCardView()
            cardView.configure(with: project) // Inyectar los datos
            projectsStackView.addArrangedSubview(cardView)
        }
    }
    
   private func configureView() {
        
       backgroundColor = .secondarySystemBackground
       layer.cornerRadius = 20
    }
    
   private func buildHierachy(){
       self.addSubview(contentStackView)
       contentStackView.addArrangedSubview(titleLabel)
       contentStackView.addArrangedSubview(projectsStackView)
    }
    
   private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            contentStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            contentStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            contentStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
}
