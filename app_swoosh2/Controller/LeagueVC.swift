//
//  LeagueVC.swift
//  app_swoosh2
//
//  Created by Дима Холод on 10.05.2022.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player ()
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "mens")
        
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
     @IBAction func onCoEdTapped(_ sender: Any) {
         selectLeague(leagueType: "coed")
     }
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
   
    
    

}
