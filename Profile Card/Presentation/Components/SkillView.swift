//
//  SkillsView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 9/16/26.
//

import UIKit

final class SkillView: UIView {
    
    //MARK: - Views
    
    private let skillLabel : UILabel = {
       
        let label = UILabel()
        
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.textColor = .label
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
       return label
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
    
    //MARK: - Private methods
    
    func configure(with viewData: SkillViewData) {
   
        skillLabel.text = viewData.skill
        
    }
    
    private func configureView() {
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 20
    }
    
    private func buildHierarchy() {
        
        addSubview(skillLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
                skillLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
                skillLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                skillLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                skillLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
            ])
  
    }
    
}
