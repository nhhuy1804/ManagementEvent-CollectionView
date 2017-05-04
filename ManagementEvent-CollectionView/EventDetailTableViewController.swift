//
//  EventDetailTableViewController.swift
//  ManagementEvent-CollectionView
//
//  Created by MrDummy on 5/3/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import UIKit

class EventDetailTableViewController: UITableViewController {

    @IBOutlet weak var eventDetailImage: UIImageView!
    @IBOutlet weak var eventDetailDay: UILabel!
    @IBOutlet weak var eventDetailDescr: UITextView!
    @IBOutlet weak var eventDetailTittle: UITextField!
    
    var event: Event?
    var dateEventDetail: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventDetailDescr.text = event?.description
        eventDetailTittle.text = event?.title
        eventDetailImage.image = event?.eventImage
        eventDetailDay.text = dateEventDetail
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        event?.title = eventDetailTittle.text!
        event?.description = eventDetailDescr.text!
    }
    
    // UITextFieldDelegate ( Keyboard will  disable when press return )
    // User must set delegate from this textfield to this view
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // UIScrollViewDelegate ( Keyboard will disable when scroll the UIView )
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        eventDetailDescr.resignFirstResponder()
        eventDetailTittle.resignFirstResponder()
    }
}
