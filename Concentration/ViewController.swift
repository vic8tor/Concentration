//
//  ViewController.swift
//  Concentration
//
//  Created by Victor on 10.05.2022.
//

import UIKit

class ViewController: UIViewController {

    let emoji = ["🚗", "🧸", "🍑", "👀"]
    var touchesCount = 0 {
        didSet {
            touchesLabel.text = "Touches: \(touchesCount)"
        }
    }
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBOutlet weak var touchesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: Any) {
        flipButton(button: sender as! UIButton)
        touchesCount += 1
    }
    
    func flipButton(button: UIButton) {
        if emoji.contains(button.currentTitle ?? "") {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.3906281292, blue: 1, alpha: 1)
        } else  {
            button.setTitle(emoji.randomElement(), for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    func checkButtonCount() {
        if touchesCount % 2 != 0 {
            
        }
    }
}

