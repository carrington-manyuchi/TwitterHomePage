//
//  TweetTableViewCell.swift
//  TwitterHomePage
//
//  Created by DA MAC M1 157 on 2023/09/13.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    public static let identifier = "TweetTableViewCell"
    
    private let  actionSpacing: CGFloat = 60.0
    
    private let avatarImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .cyan
        return imageView
    }()
    
    private let displayName: UILabel = {
        let label = UILabel()
        label.text = "Carrington Manyuchi"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@cj_manyuchi"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let tweetTextContentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mock up up tweet that will take up the multiple lines. I believe some more line will add some difference, but lets stick to what we have now. Cheers!!!"
        label.numberOfLines = 0
        return label
    }()
    
    private let replyButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "bubble.left"), for: .normal)
        button.tintColor = .systemGray2
        return button
    }()
    
    
    private let retweetButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "arrow.2.squarepath"), for: .normal)
        button.tintColor =  .systemGray2
        return button
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor =  .systemGray2
        return button
    }()

    
    private let shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        button.tintColor =  .systemGray2
        return button
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(displayName)
        contentView.addSubview(usernameLabel)
        contentView.addSubview(tweetTextContentLabel)
        contentView.addSubview(replyButton)
        contentView.addSubview(likeButton)
        contentView.addSubview(shareButton)
        contentView.addSubview(retweetButton)
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        let avatarImageViewConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        let displayNameConstraints = [
            displayName.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            displayName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
        ]
        
        let usernameLabelConstraints = [
            usernameLabel.leadingAnchor.constraint(equalTo: displayName.trailingAnchor, constant: 10),
            usernameLabel.centerYAnchor.constraint(equalTo: displayName.centerYAnchor)
        ]
        
        let tweetTextContentLabelConstraints = [
            tweetTextContentLabel.leadingAnchor.constraint(equalTo: displayName.leadingAnchor),
            tweetTextContentLabel.topAnchor.constraint(equalTo: displayName.bottomAnchor, constant: 5),
            tweetTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        ]
        
        let replyButtonConstraints = [
            replyButton.topAnchor.constraint(equalTo: tweetTextContentLabel.bottomAnchor, constant: 5),
            replyButton.leadingAnchor.constraint(equalTo: tweetTextContentLabel.leadingAnchor),
            replyButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ]
        
        let retweetButtonConstraints = [
            retweetButton.leadingAnchor.constraint(equalTo: replyButton.trailingAnchor, constant: actionSpacing),
            retweetButton.centerYAnchor.constraint(equalTo: replyButton.centerYAnchor)
//            retweetButton.topAnchor.constraint(equalTo: tweetTextContentLabel.bottomAnchor, constant: 5),
//            retweetButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ]
        
        let likeButtonConstraints = [
            likeButton.leadingAnchor.constraint(equalTo: retweetButton.trailingAnchor, constant: actionSpacing),
            likeButton.centerYAnchor.constraint(equalTo: replyButton.centerYAnchor),

//            likeButton.topAnchor.constraint(equalTo: tweetTextContentLabel.bottomAnchor, constant: 5),
//            likeButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ]
        
        let shareButtonConstraints = [
            shareButton.leadingAnchor.constraint(equalTo: likeButton.trailingAnchor, constant: actionSpacing),
            shareButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            shareButton.centerYAnchor.constraint(equalTo: replyButton.centerYAnchor),
//            shareButton.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -15)
//            shareButton.topAnchor.constraint(equalTo: tweetTextContentLabel.bottomAnchor, constant: 10),

        ]
        
        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(displayNameConstraints)
        NSLayoutConstraint.activate(usernameLabelConstraints)
        NSLayoutConstraint.activate(tweetTextContentLabelConstraints)
        NSLayoutConstraint.activate(replyButtonConstraints)
        NSLayoutConstraint.activate(retweetButtonConstraints)
        NSLayoutConstraint.activate(likeButtonConstraints)
        NSLayoutConstraint.activate(shareButtonConstraints)
        
    }
  
}
