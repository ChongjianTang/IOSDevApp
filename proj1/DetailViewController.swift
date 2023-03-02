//
//  DetailViewController.swift
//  proj1
//
//  Created by Chongjian Tang on 2/28/23.
//

import UIKit

class DetailViewController: UIViewController {

    var context: Info?
    
    @IBOutlet weak var pic: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        
        

        if let context = context {
            pic.image = context.image
            label.text = context.context
            navigationItem.title = context.title
        }

        // Do any additional setup after loading the view.
        
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
