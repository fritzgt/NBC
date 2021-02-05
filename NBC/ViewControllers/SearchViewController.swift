//
//  SearchViewController.swift
//  NBC
//
//  Created by FGT MAC on 2/5/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundView = UIImageView(image: UIImage(named: "Wp18"))
    }
    
    
    

}
