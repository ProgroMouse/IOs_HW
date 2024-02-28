//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 26.02.2024.
//

import UIKit
 
final class PostTableViewCell: UITableViewCell {
    
    static let id = "PostTableViewCell"
    
    private let postContentView: UIView = {
        let postContentView = UIView()
        postContentView.translatesAutoresizingMaskIntoConstraints = false
        return postContentView
    }()
    
    private let authorLabel: UILabel = {
        let authorLabel = UILabel()
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.font = UIFont.boldSystemFont(ofSize: 20)
        authorLabel.textColor = .black
        authorLabel.numberOfLines = 2
        
        return authorLabel
    }()
    private let descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.font = UIFont.systemFont(ofSize: 14)
        descriptionText.textColor = .systemGray
        descriptionText.numberOfLines = 0
        
        return descriptionText
    }()
    private let postImageView: UIImageView = {
        let postImageView = UIImageView()
        let image = UIImage(named: "image1")
        postImageView.translatesAutoresizingMaskIntoConstraints = false
        postImageView.image = image
        postImageView.contentMode = .scaleAspectFit
        postImageView.backgroundColor = .black
        postImageView.clipsToBounds = true
        
        return postImageView
    }()
    
    private let likesLabel: UILabel = {
        let likesLabel = UILabel()
        likesLabel.translatesAutoresizingMaskIntoConstraints = false
        likesLabel.font = UIFont.systemFont(ofSize: 16)
        likesLabel.textColor = .black
        
        return likesLabel
    }()
    
    private let viewsLabel: UILabel = {
        let viewsLabel = UILabel()
        viewsLabel.translatesAutoresizingMaskIntoConstraints = false
        viewsLabel.font = UIFont.systemFont(ofSize: 16)
        viewsLabel.textColor = .black
        
        return viewsLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubviews()
        setupContraints();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with post: Post) {
           authorLabel.text = post.author
           descriptionText.text = post.description
           postImageView.image = UIImage(named: post.image)
           likesLabel.text = "Likes: \(post.likes)"
           viewsLabel.text = "Views: \(post.views)"
       }
    
    private func addSubviews() {
       
        postContentView.addSubview(authorLabel)
        postContentView.addSubview(postImageView)
        postContentView.addSubview(descriptionText)
        postContentView.addSubview(likesLabel)
        postContentView.addSubview(viewsLabel)
    }
    
    private func setupContraints() {
        
        NSLayoutConstraint.activate([

            authorLabel.leadingAnchor.constraint(equalTo: postContentView.leadingAnchor, constant: 16),
            authorLabel.trailingAnchor.constraint(equalTo: postContentView.trailingAnchor, constant: -16),
            authorLabel.topAnchor.constraint(equalTo: postContentView.topAnchor, constant: 16),
            
            postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 12),
            postImageView.leadingAnchor.constraint(equalTo: postContentView.leadingAnchor),
            postImageView.trailingAnchor.constraint(equalTo: postContentView.trailingAnchor),
            postImageView.heightAnchor.constraint(equalTo: postImageView.widthAnchor),
            
            descriptionText.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
            descriptionText.leadingAnchor.constraint(equalTo: postContentView.leadingAnchor, constant: 16),
            descriptionText.trailingAnchor.constraint(equalTo: postContentView.trailingAnchor, constant: -16),
            
            likesLabel.topAnchor.constraint(equalTo: descriptionText.bottomAnchor, constant: 16),
            likesLabel.leadingAnchor.constraint(equalTo: postContentView.leadingAnchor, constant: 16),
            viewsLabel.bottomAnchor.constraint(equalTo: postContentView.bottomAnchor, constant: -16),
            
            viewsLabel.topAnchor.constraint(equalTo: descriptionText.bottomAnchor, constant: 16),
            viewsLabel.trailingAnchor.constraint(equalTo: postContentView.trailingAnchor, constant: -16),
            viewsLabel.bottomAnchor.constraint(equalTo: postContentView.bottomAnchor, constant: -16),
        ])
    }
    
}
