//
//  detailsVC.swift
//  TheAvengers
//
//  Created by Nigar Alaskarova on 27.03.24.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var realName: UILabel!
    @IBOutlet weak var superPower: UILabel!
    var selectedHero : Hero?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        heroName.text = selectedHero?.name
        realName.text = selectedHero?.realName
        superPower.text = selectedHero?.power
        imageView.image = selectedHero?.image
    }
}
