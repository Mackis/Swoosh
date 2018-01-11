//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by Malcolm Kumwenda on 2018/01/08.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player?
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    func LeagueViewController(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.player = Player()
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague("mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague("womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague("coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
    }
    
    func selectLeague(_ leagueType: String){
        self.player?.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
        }
    }
    

}
