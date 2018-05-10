//
//  ViewController.swift
//  collectionviewdemo
//
//  Created by Vaibhav on 10/05/18.
//  Copyright © 2018 Vaibhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var mycollectionview: UICollectionView!
    var array = ["a","b","c","d","e","f","g","h","etc..."]
    var cell = CollectionViewCell()
    var reuseIdentifier = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        mycollectionview.dataSource = self
        mycollectionview.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        cell = mycollectionview.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        cell.layoutIfNeeded()
        cell.mylabel.text = array[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

