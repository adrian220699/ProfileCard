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
                    StatViewData(icon: UIImage(systemName: "suit.heart.fill")!, value: "1.2K")]
            
            
        )
    }
}
