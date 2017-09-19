//
//  ViewController.swift
//  PartyRockApp
//
//  Created by APC6590 on 9/7/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videoCells = [VideoMetadata]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1 = VideoMetadata(imageUrl: "https://pre12.deviantart.net/a622/th/pre/f/2012/028/e/6/linkin_park__bleed_it_out_by_vikuutt-d4nutpx.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OnuuYcqhzCE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bleed It Out")
        
        let v2 = VideoMetadata(imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/e8/Linkin_Park_-_Papercut_CD_cover.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vjVkXlxsO8Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Paper Cut")
        
        let v3 = VideoMetadata(imageUrl: "https://upload.wikimedia.org/wikipedia/en/b/b9/Linkin_Park_-_Numb_CD_cover.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kXYiU_JCYtU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Numb")
        
        let v4 = VideoMetadata(imageUrl: "https://images.genius.com/dea614df3874d90b2488f8f6bbc2b666.600x533x1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zsCD5XCu6CM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Somewhere I Belong")
        
        let v5 = VideoMetadata(imageUrl: "https://upload.wikimedia.org/wikipedia/en/7/73/Linkin_Park_-_Faint_CD_cover.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LYU-8IFcDPw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Faint")
        
        videoCells.append(v1)
        videoCells.append(v2)
        videoCells.append(v3)
        videoCells.append(v4)
        videoCells.append(v5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let videoMetadataCell = videoCells[indexPath.row]
            
            cell.updateUI(videoMetadata: videoMetadataCell)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoCells.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let videoMetadata = videoCells[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: videoMetadata)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let videoMetadata = sender as? VideoMetadata {
                destination.videoMetadata = videoMetadata
            }
        }
    }
}

