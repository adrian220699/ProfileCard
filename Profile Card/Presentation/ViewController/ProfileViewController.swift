//
//  ProfileViewController.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 7/10/26.
//

import UIKit

final class ProfileViewController : UIViewController {
    
    private let rootView = ProfileView()
    
    private let viewModel = ProfileViewModel()
    
    override func loadView() {
        view = rootView
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.configure(with: viewModel.profile)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ProfileView: ", view.frame)
    }
}
