//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by APC6590 on 9/1/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
