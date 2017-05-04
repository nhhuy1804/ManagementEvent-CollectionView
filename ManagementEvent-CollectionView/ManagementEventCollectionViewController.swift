//
//  ManagementEventCollectionViewController.swift
//  ManagementEvent-CollectionView
//
//  Created by MrDummy on 5/3/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import UIKit

var eventLines = EventLine.eventLines();

struct StoryBoard {
    
    static let headerSectionView = "HeaderSectionView"
    static let eventCell = "EventCell"
    static let showDetail = "ShowDetail"
}

class ManagementEventCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView?.reloadData()
    }
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return eventLines[section].events.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.eventCell, for: indexPath) as! EventCollectionViewCell
        let event = eventLines[indexPath.section].events[indexPath.item];
        cell.configCell(event: event)
        
        return cell;
    }
    
    //MARK: - Config Header Section Cell
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerSectionView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerSectionView, for: indexPath) as! HeaderSectionCollectionReusableView
        let eventLine = eventLines[indexPath.section];
        headerSectionView.headerLabel.text = eventLine.dates
        headerSectionView.headerImageView.image = eventLine.dateImages
        
        return headerSectionView
    }
    
    // MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: StoryBoard.showDetail, sender: indexPath);
    }
    
    // MARK: - Event Detail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showDetail {
            let eventDetailVC = segue.destination as! EventDetailTableViewController
            let index = sender as! IndexPath
            let evenLine = eventLines[index.section];
            let event = evenLine.events[index.item]
            
            eventDetailVC.event = event
            eventDetailVC.dateEventDetail = evenLine.dates
        }
    }
}
