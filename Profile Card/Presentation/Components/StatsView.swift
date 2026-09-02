//
//  StatsView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 8/19/26.
//

import UIKit

final class StatsView : UIView {
    
    //MARK: - Views
    
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
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    
    //MARK: - Private Methods
    
    func configure(with viewData: [StatViewData]) {
   
        for statData in viewData {

            let statView = StatView()

            statView.configure(with: statData)

            contentStackView.addArrangedSubview(statView)
        }
        
    }
    
    private func configureView() {
        
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 16
        
    }
    
    private func buildHierarchy() {
        
        addSubview(contentStackView)
        
        
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
