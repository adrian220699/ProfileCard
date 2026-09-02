//
//  StatView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 8/19/26.
//
import UIKit

final class StatView : UIView {
    
    //MARK: - Views
    
    private let iconImageView : UIImageView = {
       
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemBlue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
        
    }()
    
    private let valueLabel : UILabel = {
        
        let label = UILabel()
        
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .label
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private let contentStackView : UIStackView = {
       
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 6
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
    
    func configure(with viewData: StatViewData) {
   
        iconImageView.image = viewData.icon
        valueLabel.text = viewData.value
        
    }
    
    private func configureView() {
        
        backgroundColor = .clear
    }
    
    private func buildHierarchy() {
        
        addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(iconImageView)
        contentStackView.addArrangedSubview(valueLabel)
        
        
        
    }
    
    private func setupConstraints() {

        NSLayoutConstraint.activate([
            
            contentStackView.topAnchor.constraint(
                   equalTo: topAnchor,
                   constant: 8
               ),

               contentStackView.leadingAnchor.constraint(
                   equalTo: leadingAnchor,
                   constant: 8
               ),

               contentStackView.trailingAnchor.constraint(
                   equalTo: trailingAnchor,
                   constant: -8
               ),

               contentStackView.bottomAnchor.constraint(
                   equalTo: bottomAnchor,
                   constant: -8
               )

        ])
        
        NSLayoutConstraint.activate([
            
            iconImageView.widthAnchor.constraint(equalToConstant: 24),
            iconImageView.heightAnchor.constraint(equalToConstant: 24)
            
            ])
    }
    
}

