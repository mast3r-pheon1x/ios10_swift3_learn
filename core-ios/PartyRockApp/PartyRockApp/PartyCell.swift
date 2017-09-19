//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by APC6590 on 9/8/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    @IBOutlet weak var videoPreviewImage: UIImageView!

    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(videoMetadata: VideoMetadata) {
        videoTitle.text = videoMetadata.videoTitle
        
        let url = URL(string: videoMetadata.imageUrl)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
            }
        }
    }
}
