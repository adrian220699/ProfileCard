//
//  ProfileViewModel.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 7/10/26.
//

import UIKit

final class ProfileViewModel {
    
    
    var profile: ProfileViewData {
        ProfileViewData(
            
            name : "Adrian Flores Herrera",
            job  : "iOS Developer",
            image: UIImage(systemName: "person.circle.fill")!,
            stats: [StatViewData(icon: UIImage(systemName: "star.fill")!, value: "120"),
                    StatViewData(icon: UIImage(systemName: "person.2.fill")!, value: "530"),
                    StatViewData(icon: UIImage(systemName: "suit.heart.fill")!, value: "1.2K")],
            skills: [SkillViewData(skill: "Swift"),
                     SkillViewData(skill: "UIKit"),
                     SkillViewData(skill: "MVVM"),
                     SkillViewData(skill: "Git")],
            projects: [ProjectCardViewData(title: "Pokédex", description: "iOS application focused on consuming REST APIs and presenting Pokémon information through a modular architecture.", technologies: ["Swift","UIkit"]),
                       ProjectCardViewData(title: "RickAndMortyAppSwiftUI", description: "iOS application built with SwiftUI focused on consuming and displaying data from the Rick and Morty API.", technologies: ["Swift","SwiftUI"]),
                       ProjectCardViewData(title: "Budget", description: "iOS application focused on personal budget management and financial tracking.", technologies: ["Swift","SwiftUI"])]
            
            
            
        )
    }
}
