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
    @IBOutlet weak var airPlay: UIButton!
    @IBOutlet weak var home: UIBarButtonItem!
    @IBOutlet weak var browse: UIBarButtonItem!
    @IBOutlet weak var live: UIBarButtonItem!
    @IBOutlet weak var search: UIBarButtonItem!
    @IBOutlet weak var more: UIBarButtonItem!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    //MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupSearchBar()
    }
    
    
    //MARK: - Private Methods
    private func setupUI() {
        //Set tableview BG
        tableView.backgroundView = UIImageView(image: UIImage(named: "Wp18"))
        
        //Style buttons
        airPlay.tintColor = .white
        home.tintColor = .gray
        browse.tintColor = .gray
        live.tintColor = .gray
        search.tintColor = .white
        more.tintColor = .gray
        
    }
    
    private func setupSearchBar() {
        //Setup searchbard ui
        searchBar.layer.backgroundColor = .none
        searchBar.layer.borderWidth = .zero
        searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "What are you looking for?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: .ultraLight)])
        searchBar.searchTextField.leftView?.tintColor = .white
        
        let frame = CGRect(x: 10, y: searchBar.frame.size.height - 10, width: searchBar.frame.size.width - 20, height: 1)
        
        let border = UIView(frame: frame)
        border.backgroundColor = UIColor.white
        searchBar.addSubview(border)
    }

}
