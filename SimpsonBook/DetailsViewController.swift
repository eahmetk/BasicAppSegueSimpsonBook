//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Ahmet on 22.12.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    var selectedSimpson : simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpson?.name
        detailsLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
       
    }
    

}
