//
//  RankingVC.swift
//  barabaraGame
//
//  Created by Miki Takahashi on 2019/03/31.
//  Copyright © 2019 MikiTakahashi. All rights reserved.
//

import UIKit

class RankingVC: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel!
    @IBOutlet var rankingLabel2: UILabel!
    @IBOutlet var rankingLabel3: UILabel!
    
    let userDefaults: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        rankingLabel1.text = String(userDefaults.integer(forKey: "score1"))
        rankingLabel2.text = String(userDefaults.integer(forKey: "score2"))
        rankingLabel3.text = String(userDefaults.integer(forKey: "score3"))
    }
    
    @IBAction func toTop() {
        self.dismiss(animated: true, completion: nil)
    }

}
