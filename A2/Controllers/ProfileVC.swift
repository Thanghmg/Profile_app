//
//  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let screenLabel = UILabel()
    
    private let profileImg = UIImageView()
    
    private let nameLabel = UILabel()
    private let bioLabel = UILabel()
    
    private let addressLabel = UILabel()
    private let majorLabel = UILabel()
    
    private let addressIcon = UIImageView()
    private let majorIcon = UIImageView()
    
    private let editButton = UIButton()
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        
        
    // MARK: Views properties
        
    // Screen Label
        screenLabel.text = "My Profile"
        screenLabel.font = .systemFont(ofSize: .init(20), weight: .medium)
        screenLabel.textColor = .black
        view.addSubview(screenLabel)
        screenLabel.translatesAutoresizingMaskIntoConstraints = false
        
    // Profile Image
        profileImg.image = UIImage(named: "Avatar_1")
        view.addSubview(profileImg)
        profileImg.translatesAutoresizingMaskIntoConstraints = false
        
        
    // Profile name lable
        nameLabel.text = "Sadie Adler"
        nameLabel.font = .systemFont(ofSize: .init(14), weight: .medium)
        nameLabel.textColor = .black
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
    // Profile Bio
        bioLabel.text = "Never waste a bullet on those O'Driscoll Boys"
        bioLabel.font = UIFont.italicSystemFont(ofSize: 14)
        bioLabel.textColor = .black
        view.addSubview(bioLabel)
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        
    // Address Lable
        addressLabel.text = "Dallas, Texas"
        addressLabel.font = .systemFont(ofSize: .init(14), weight: .medium)
        addressLabel.textColor = .black
        view.addSubview(addressLabel)
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        
    // Address Icon
        addressIcon.image = UIImage(systemName: "house.fill")
        addressIcon.tintColor = UIColor.black
        view.addSubview(addressIcon)
        addressIcon.translatesAutoresizingMaskIntoConstraints = false
        
    // Major Label
        majorLabel.text = "Gun Slinger"
        majorLabel.textColor = .black
        majorLabel.font = .systemFont(ofSize: .init(14), weight: .medium)
        view.addSubview(majorLabel)
        majorLabel.translatesAutoresizingMaskIntoConstraints = false
        
    // Major Icon
        majorIcon.image = UIImage(systemName: "person.2")
        majorIcon.tintColor = UIColor.black
        view.addSubview(majorIcon)
        majorIcon.translatesAutoresizingMaskIntoConstraints = false
        
    // Edit Button
        editButton.setTitle("Edit Profile", for: .normal)
        editButton.backgroundColor = UIColor.a2.ruby
        editButton.setTitleColor(.white, for: .normal)
        editButton.layer.cornerRadius = 8
        view.addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.addTarget(self, action: #selector(editProfile), for: .touchUpInside)
        
        // Viewing UI
        setupUI()
    }
    
    // MARK: - Set Up Views
    private func setupUI() {
        // Screen Label - Center Top of the screen
        NSLayoutConstraint.activate([
            screenLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            screenLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        ])
        
        // Profile Image - Center bellow Screen Label
        NSLayoutConstraint.activate([
            profileImg.topAnchor.constraint(equalTo: screenLabel.bottomAnchor, constant: 20),
            profileImg.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            profileImg.heightAnchor.constraint(equalToConstant: 120),
            profileImg.widthAnchor.constraint(equalToConstant: 120),
        ])
        
        // Profile Name
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImg.bottomAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        ])
        
        // Profile Bio
        NSLayoutConstraint.activate([
            bioLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 18),
            bioLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        ])
        
        // Address Icon
        NSLayoutConstraint.activate([
            addressIcon.topAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: 18),
            addressIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            addressIcon.heightAnchor.constraint(equalToConstant: 20),
            addressIcon.widthAnchor.constraint(equalToConstant: 24),
        ])
        
        // Address Label
        NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: 18),
            addressLabel.leadingAnchor.constraint(equalTo: addressIcon.trailingAnchor, constant: 12),
        ])
        
        // Major Icon
        NSLayoutConstraint.activate([
            majorIcon.topAnchor.constraint(equalTo: addressIcon.bottomAnchor, constant: 18),
            majorIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            majorIcon.heightAnchor.constraint(equalToConstant: 20),
            majorIcon.widthAnchor.constraint(equalToConstant: 24),
        ])
        
        // Major Label
        NSLayoutConstraint.activate([
            majorLabel.topAnchor.constraint(equalTo: addressIcon.bottomAnchor, constant: 18),
            majorLabel.leadingAnchor.constraint(equalTo: majorIcon.trailingAnchor, constant: 12),
        ])
        
        // Button Layout
        NSLayoutConstraint.activate([
            editButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            editButton.heightAnchor.constraint(equalToConstant: 40),
            editButton.widthAnchor.constraint(equalToConstant: 320),
            editButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc private func editProfile() {
        let editProfileVC = EditProfileVC()
        navigationController?.pushViewController(editProfileVC, animated: true)
    }
}
