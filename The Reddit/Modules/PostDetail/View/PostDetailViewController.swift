//
//  PostDetailViewController.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import UIKit
import SDWebImage

class PostDetailViewController: BaseViewController {
    var presenter: PostDetailPresenterProtocol?
    
    @IBOutlet weak var subredditLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subredditLabel.text = String(format: TheRedditLocalizables.subredditTitle, arguments: [presenter?.selectedPost?.subreddit ?? String()])
        authorLabel.text = String(format: TheRedditLocalizables.authorTitle, arguments: [presenter?.selectedPost?.author ?? String()])
        commentsLabel.text = String(format: TheRedditLocalizables.commentsTitle, arguments: [presenter?.selectedPost?.commentsQuantity ?? String()])
        createdAtLabel.text = String(format: TheRedditLocalizables.createdAtTitle, arguments: [presenter?.selectedPost?.date ?? String()])
        titleLabel.text = presenter?.selectedPost?.title
        if let url = URL(string: presenter?.selectedPost?.thumbnail ?? String()) {
            thumbnailImageView.sd_setImage(with: url, placeholderImage: .init(named: "placeholder"))
        }
    }
}

extension PostDetailViewController: PostDetailViewProtocol { }
