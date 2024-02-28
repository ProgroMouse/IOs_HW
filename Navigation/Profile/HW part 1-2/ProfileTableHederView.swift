//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 16.11.2023.
//

import UIKit

//class ProfileTableHederView: UIView {
//        
//    private let profileHeaderView: ProfileHeaderView = {
//        let profileHeaderView = ProfileHeaderView()
//        profileHeaderView.backgroundColor = .lightGray
//        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
//        
//        return profileHeaderView
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        setupProfileUI()
// 
//    }
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//    
//    func   setupProfileUI() {
//        NSLayoutConstraint.activate([
//            profileHeaderView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
//            profileHeaderView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
//            profileHeaderView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
//            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
////            profileHeaderView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
//        ])
//    }
//}
import UIKit

class ProfileTableHederView: UIViewController {
        
    private let profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.backgroundColor = .lightGray
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        return profileHeaderView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupProfileUI()
    }
    
    func   setupProfileUI() {
        //           добавляем profileHeaderView в качестве дочернего класса
        view.addSubview(profileHeaderView)
        let safeAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
//            profileHeaderView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
        ])
    }
}
