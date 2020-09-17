//
//  NotificationLikeEventTableViewCell.swift
//  Instagram
//
//  Created by Stanislav Kogiku on 2020/09/17.
//  Copyright © 2020 Stanislav Kogiku. All rights reserved.
//

import UIKit

protocol NotificationLikeEventTableViewCellDelegate: AnyObject {
    func didTapRelatedPostButton(model: String)
}

class NotificationLikeEventTableViewCell: UITableViewCell {

    
       static let identifier = "NotificationLikeEventTableViewCell"
       
       weak var delegate: NotificationLikeEventTableViewCell?
       
       private let profileImageView: UIImageView = {
           let imageView = UIImageView()
           imageView.layer.masksToBounds = true
           imageView.contentMode = .scaleAspectFill
           return imageView
       }()
       
       private let label: UILabel = {
           let label = UILabel()
           label.textColor = .label
           label.numberOfLines = 0
           return label
       }()
       
       private let postButton: UIButton = {
           let button = UIButton()
           return button
       }()
       
       // MARK: - Override init
       
       override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           contentView.clipsToBounds = true
           contentView.addSubview(profileImageView)
           contentView.addSubview(label)
           contentView.addSubview(postButton)
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       public func configure(with model: String) {
           
       }
       
       override func prepareForReuse() {
           super.prepareForReuse()
           postButton.setBackgroundImage(nil, for: .normal)
           postButton.backgroundColor = nil
           label.text = nil
           profileImageView.image = nil
       }

       override func layoutSubviews() {
           super.layoutSubviews()
       }

}
