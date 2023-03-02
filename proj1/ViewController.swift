//
//  ViewController.swift
//  proj1
//
//  Created by Chongjian Tang on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    let context1 = Info(context: "American teenager Peter Parker, a poor sickly orphan, is bitten by a radioactive spider. As a result of the bite, he gains superhuman strength, speed, and agility, along with the ability to cling to walls, turning him into Spider-Man.", image: UIImage(named: "pic1")!, title: "My cool backstory")
    let context2 = Info(context: "Ethyl chloride is essentially Spider-Man's Kryptonite and it renders anyone's spider-powers null and void. This makes ethyl chloride extremely powerful against Spider-Man, but this chemical cocktail doesn't have nearly the same reputation as Superman's Kryptonite.", image: UIImage(named: "pic2")!, title: "My ony weakness")
    let context3 = Info(context: "Like his namesake, Spider-Man's strength and agility stand far above those of the average human, allowing him to lift nearly ten tons and to leap and move at incredible speeds with high accuracy.", image: UIImage(named: "pic3")!, title: "How much can I lift")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapContext(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.context = context1
            } else if tappedView.tag == 1 {
                detailViewController.context = context2
            } else if tappedView.tag == 2 {
                detailViewController.context = context3
            } else {
                print("error")
            }
        }
    }
}

