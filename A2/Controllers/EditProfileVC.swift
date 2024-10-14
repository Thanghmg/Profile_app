//
//  EditProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class EditProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let myProfileImg = UIImageView()
    
    private let nameLabel = UILabel()
    
    private let bioLabel = UILabel()
    // MARK: - Properties (data)
    
    // MARK: - viewDidLoad and init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Profile"
        view.backgroundColor = UIColor.white
        
        setupUI()
        
        // Profile Image Properties
        myProfileImg.image = UIImage(named: "Avatar_1")
        view.addSubview(myProfileImg)
        myProfileImg.translatesAutoresizingMaskIntoConstraints = false
        
        // Name profile properties
        nameLabel.text = "Sadie Adler"
        nameLabel.font = .systemFont(ofSize: 14, weight: .medium)
        nameLabel.textColor = .black
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - Set Up Views
    private func setupUI() {
        
        // Profile Img Constraint
        NSLayoutConstraint.activate([
            myProfileImg.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -673),
            myProfileImg.heightAnchor.constraint(equalToConstant: 120),
            myProfileImg.widthAnchor.constraint(equalToConstant: 120),
        ])
        
    }
    
}
