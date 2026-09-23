//
//  ProfileView.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 7/10/26.
//
import UIKit

final class ProfileView : UIView {
    
    //MARK: - Views
    
    private let profileHeaderView: ProfileHeaderView = {
        
        let view = ProfileHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let statsView : StatsView = {
        
        let view = StatsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private let actionsView : ActionView = {
        
        let view = ActionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private let aboutView : AboutView = {
        
        let view = AboutView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
        
    private let skillsView : SkillsView = {
        let view = SkillsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let projectsView : ProjectsView = {
        let view = ProjectsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let contentStackView : UIStackView = {
        
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
        
    }()
    
    //MARK: - Initializers
    
    override init(frame : CGRect) {
        super.init(frame: frame)
        
        configureView()
        buildHierarchy()
        setupConstraints()
        setupActions()
    }
    
    required init?(coder : NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    
    func configure(with viewData: ProfileViewData) {
        profileHeaderView.configure(with: viewData)
        statsView.configure(with: viewData.stats)
        skillsView.configure(with: viewData.skills)
        projectsView.configure(with: viewData.projects)
        
    }
    
    
    
    private func configureView() {
        
        backgroundColor = .systemBackground
        
    }
    
    private func setupActions() {
        
        actionsView.onFollowTapped = {
            print("Follow Tapped")
        }
        
        actionsView.onMessageTapped = {
            print("On Message Tapped")
        }
    }
    
    private func buildHierarchy() {
        
        addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(profileHeaderView)
        contentStackView.addArrangedSubview(statsView)
        contentStackView.addArrangedSubview(actionsView)
        contentStackView.addArrangedSubview(aboutView)
        contentStackView.addArrangedSubview(skillsView)
        contentStackView.addArrangedSubview(projectsView)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            contentStackView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: 20
            ),
            
            contentStackView.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 25
            ),
            
            contentStackView.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -25
            ),
            
            profileHeaderView.heightAnchor.constraint(equalToConstant: 250),
            
            statsView.heightAnchor.constraint(
                equalToConstant: 70
            ),
            
            actionsView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        print("ProfileView: ", frame)
        print("Stack: ", contentStackView.frame)
        print("Header: ", profileHeaderView.frame)
        print("Stats: " , statsView.frame)
        
        DispatchQueue.main.async {
            
            print("----- AFTER LAYOUT -----")
            print("ProfileView: ", self.frame)
            print("Stack: ", self.contentStackView.frame)
            print("Header: ", self.profileHeaderView.frame)
            print("Stats: ", self.statsView.frame)
        }
        
    }
}
