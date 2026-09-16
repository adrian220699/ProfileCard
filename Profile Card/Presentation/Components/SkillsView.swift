//
//  SkillsView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 9/16/26.
//

import UIKit

final class SkillsView: UIView {
    
    //MARK: - Views
    
    private let titleLabel: UILabel = {
        let label = UILabel()

        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .label
        label.text = "Skills"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private let contentStackView: UIStackView = {

        let stackView = UIStackView()

        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()
    
    private let skillsStackView: UIStackView = {

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
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    
    
    //MARK: - Private Methods
    
    func configure(with viewData: [SkillViewData]) {

        for skillData in viewData {

            let skillView = SkillView()
            skillView.configure(with: skillData)

            skillsStackView.addArrangedSubview(skillView)
        }
    }
    
    private func configureView() {
        
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 16
        
    }
    
    private func buildHierarchy() {

        addSubview(contentStackView)

        contentStackView.addArrangedSubview(titleLabel)
        contentStackView.addArrangedSubview(skillsStackView)
    }
    
    private func setupConstraints() {

        NSLayoutConstraint.activate([

            contentStackView.topAnchor.constraint(
                equalTo: topAnchor,
                constant: 14
            ),

            contentStackView.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 16
            ),

            contentStackView.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -16
            ),

            contentStackView.bottomAnchor.constraint(
                equalTo: bottomAnchor,
                constant: -14
            )

        ])
    }
    
}

    

