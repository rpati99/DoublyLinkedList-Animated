//
//  HelperExtension.swift
//  Doubly LinkedList
//
//  Created by Rachit Prajapati on 10/11/21.
//

import Foundation
import UIKit


// MARK: - Helper methods
extension ViewController {

    func hideNodes() {
        node1.alpha = 0
        n1ujoint.alpha = 0
        n1pjoint.alpha = 0
        node2.alpha = 0
        n2ujoint.alpha = 0
        n2pjoint.alpha = 0
        node3.alpha = 0
        n3ujoint.alpha = 0
        n3pjoint.alpha = 0
        node4.alpha = 0
        n4ujoint.alpha = 0
        n4pjoint.alpha = 0
        node5.alpha = 0
        n5ujoint.alpha = 0
        n5pjoint.alpha = 0
    }
    
    func hideBtns() {
        insertBtn.alpha = 0
        appendBtn.alpha = 0
        pushBtn.alpha = 0
        
        popbtn.alpha = 0
        removeAtBtn.alpha = 0
        removeLastBtn.alpha = 0
    }
    
    func roundNodes() {
        node1.layer.cornerRadius = node1.frame.width / 2
        node2.layer.cornerRadius = node2.frame.width / 2
        node3.layer.cornerRadius = node3.frame.width / 2
        node4.layer.cornerRadius = node4.frame.width / 2
        node5.layer.cornerRadius = node5.frame.width / 2
    }
    
    func disableBtns() {
        appendBtn.isEnabled = false
        insertBtn.isEnabled = false
        popbtn.isEnabled = false
        removeAtBtn.isEnabled = false
        removeLastBtn.isEnabled = false
    }
}



