//
//  LinkinPark.swift
//  PartyRockApp
//
//  Created by APC6590 on 9/8/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import Foundation

class VideoMetadata {
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageUrl: String {
        return _imageUrl
    }
    
    var videoUrl: String {
        return _videoUrl
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageUrl: String, videoUrl: String, videoTitle: String) {
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
    
}
