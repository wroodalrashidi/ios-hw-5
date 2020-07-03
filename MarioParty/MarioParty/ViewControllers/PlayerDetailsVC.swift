//
//  PlayerDetailsVC.swift
//  MarioParty
//
//  Created by Wrood Alrashidi on 03/07/2020.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerDetailsVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
   
    var playerSoundEffect: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = SelectedPlayer.name
        imageView.image = UIImage(named: SelectedPlayer.name)
        backgroundImageView.image = UIImage(named: SelectedPlayer.bgName())

        // Do any additional setup after loading the view.
    }
    
    @IBAction func randomizeStars(_ sender: Any) {
        var stars = ["Star1", "Star2", "Star3", "Star4", "Star5"]
        let randomStar = stars.randomElement()!
        starsImageView.image = UIImage(named: randomStar)
    }
    @IBAction func playCharacterSound(_ sender: Any) {
        playMusic(musicName: SelectedPlayer.musicNmae())
    }
   
    func playMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            playerSoundEffect = try AVAudioPlayer(contentsOf: url)
            playerSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
