//
//  ViewController.swift
//  Doubly LinkedList
//
//  Created by Rachit Prajapati on 26/11/20.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - textfield
    @IBOutlet weak var inputTxtField: UITextField!
    
    // MARK: - Insertion and deletion btns
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    
    // MARK:- method buttons
    @IBOutlet weak var pushBtn: UIButton!
    @IBOutlet weak var appendBtn: UIButton!
    @IBOutlet weak var insertBtn: UIButton!
    
    @IBOutlet weak var popbtn: UIButton!
    @IBOutlet weak var removeLastBtn: UIButton!
    @IBOutlet weak var removeAtBtn: UIButton!
    
    // MARK: - Labels
    @IBOutlet weak var n1Label: UILabel!
    @IBOutlet weak var n2Label: UILabel!
    @IBOutlet weak var n3label: UILabel!
    @IBOutlet weak var n4Label: UILabel!
    @IBOutlet weak var n5Label: UILabel!
    
    // MARK: - nodes
    @IBOutlet weak var node1: UIView!
    @IBOutlet weak var n1ujoint: UIView!
    @IBOutlet weak var n1pjoint: UIView!
    
    @IBOutlet weak var node2: UIView!
    @IBOutlet weak var n2ujoint: UIView!
    @IBOutlet weak var n2pjoint: UIView!
    
    @IBOutlet weak var node3: UIView!
    @IBOutlet weak var n3ujoint: UIView!
    @IBOutlet weak var n3pjoint: UIView!
    
    @IBOutlet weak var node4: UIView!
    @IBOutlet weak var n4ujoint: UIView!
    @IBOutlet weak var n4pjoint: UIView!
    
    @IBOutlet weak var node5: UIView!
    @IBOutlet weak var n5ujoint: UIView!
    @IBOutlet weak var n5pjoint: UIView!
    
    @IBOutlet weak var n5Constraint: NSLayoutConstraint!
    var list = DoublyLinkedList<String>()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        hideBtns()
        roundNodes()
        hideNodes()
        disableBtns()
        initiateUI()
    }
    
    private func initiateUI() {
        list.push(n2Label.text!)
        list.push(n3label.text!)
        UIView.animate(withDuration: 1.5) {
            self.node2.alpha = 1
            self.node3.alpha = 1
            self.node2.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.node3.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.node2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 6)
            self.node3.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 6)
            
            self.node2.transform = CGAffineTransform(translationX: 200, y: 20)
            self.node3.transform = CGAffineTransform(translationX: -200, y: 20)
            self.node2.transform = CGAffineTransform.identity
            self.node3.transform = CGAffineTransform.identity
        } completion: { (true) in
            UIView.animate(withDuration: 2.0) {
                self.n2pjoint.alpha = 1
                self.n3ujoint.alpha = 1
            }
        }
    }
    
}
