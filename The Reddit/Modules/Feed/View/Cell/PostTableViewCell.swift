//
//  PostTableViewCell.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import UIKit
import SDWebImage

class PostTableViewCell: UITableViewCell {
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var subredditLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var thumbnailImageView: UIImageView!
    @IBOutlet private weak var commentsQuantityLabel: UILabel!
    @IBOutlet private weak var createdAtLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        containerView.layer.cornerRadius = 8
        containerView.backgroundColor = .orange.withAlphaComponent(0.1)
        containerView.dropShadow()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setUpCell(model: FeedModel.Post) {
        subredditLabel.text = model.subreddit
        authorLabel.text = model.author
        titleLabel.text = model.title
        if let url = URL(string: model.thumbnail) {
            thumbnailImageView.sd_setImage(with: url, placeholderImage: .init(named: "placeholder"))
        }
        
        commentsQuantityLabel.text = "Comments: \(model.commentsQuantity)"
        createdAtLabel.text = model.date
    }
}
