//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by APC6590 on 9/8/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _videoMetadata: VideoMetadata!

    var videoMetadata: VideoMetadata {
        get {
            return _videoMetadata
        } set {
            _videoMetadata = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = videoMetadata.videoTitle
        webView.loadHTMLString(videoMetadata.videoUrl, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
