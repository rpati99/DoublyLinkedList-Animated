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
    private var list = DoublyLinkedList<String>()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideBtns()
        roundNodes()
        hideNodes()
        disableBtns()

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
    
    // MARK: - Button methods
    @IBAction func plusTapped(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.pushBtn.alpha = 1
            self.appendBtn.alpha = 1
            self.insertBtn.alpha = 1
            self.transformBtn(self.pushBtn)
            self.transformBtn(self.appendBtn)
            self.transformBtn(self.insertBtn)
            
        }
    }
    
    
    
    
    @IBAction func minusTapped(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.popbtn.alpha = 1
            self.removeLastBtn.alpha = 1
            self.removeAtBtn.alpha = 1
            self.transformBtn(self.popbtn)
            self.transformBtn(self.removeLastBtn)
            self.transformBtn(self.removeAtBtn)
        }

    }
    
    
    @IBAction func pushTapped(_ sender: Any) {
        appendBtn.isEnabled = true
        appendBtn.setTitleColor(.link
                                , for: .normal)
        n1Label.text = inputTxtField.text ?? " "
        list.push(n1Label.text!)
        
        UIView.animate(withDuration: 2) {
            self.node1.alpha = 1
            self.node1.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.node1.transform = CGAffineTransform(translationX: 400, y: 400)
            self.node1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 3)
            
            
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) {
                self.node1.transform = CGAffineTransform.identity
                self.n1pjoint.alpha = 1
                self.n2ujoint.alpha = 1
            }
        }

    }
    
    @IBAction func appendTapped(_ sender: Any) {
        insertBtn.isEnabled = true
        insertBtn.setTitleColor(.link, for: .normal)
        n5Label.text = inputTxtField.text ?? " "
        list.append(n5Label.text!)
        
        UIView.animate(withDuration: 2.5) {
            self.node5.alpha = 1
            self.node5.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.node5.transform = CGAffineTransform(translationX: 200, y: -150)
            self.node5.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 3)
        } completion: { (true) in
            UIView.animate(withDuration: 0.7) {
                self.node5.transform = CGAffineTransform.identity
                self.n5ujoint.alpha = 1
                self.n3pjoint.alpha = 1
            }
        }
        
        

    }
    
    
    @IBAction func insertTapped(_ sender: Any) {
        popbtn.isEnabled = true
        popbtn.setTitleColor(.link, for: .normal)
        removeAtBtn.isEnabled = true
        removeAtBtn.setTitleColor(.link, for: .normal)
        removeLastBtn.isEnabled = true
        removeLastBtn.setTitleColor(.link, for: .normal)
        
        n4Label.text = inputTxtField.text ?? " "
        
        let reqNode = list.node(index: 2)!
        list.insert(value: n4Label.text!, after: reqNode)
        
        UIView.animate(withDuration: 1.0) {
            self.n5Constraint.constant = 29
            self.n5ujoint.alpha = 0
            self.n3pjoint.alpha = 0
            self.view.layoutIfNeeded()
        } completion: { (true) in
            UIView.animate(withDuration: 1.8) {
                self.node4.alpha = 1
                self.node4.transform = CGAffineTransform(scaleX: 3, y: 3)
                self.node4.transform = CGAffineTransform(translationX: -200, y: 200)
                self.node4.transform =   CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            } completion: { (true) in
                UIView.animate(withDuration: 0.7) {
                    self.node4.transform = CGAffineTransform.identity
                    self.n3pjoint.alpha = 1
                    self.n5ujoint.alpha = 1
                    self.n4ujoint.alpha = 1
                    self.n4pjoint.alpha = 1
                }
            }

        }
    }
    
    
    @IBAction func popTapped(_ sender: Any) {
        list.pop()
        UIView.animate(withDuration: 0.7) {
            self.n1pjoint.alpha = 0
            self.n2ujoint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 1.5) {
                self.node1.alpha = 0
                self.node1.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        }
    }
    
    
    @IBAction func removeLastTapped(_ sender: Any) {
        list.removeLast()
        UIView.animate(withDuration: 0.8) {
            self.n5ujoint.alpha = 0
            self.n4pjoint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) {
                self.node5.alpha = 0
                self.node5.transform = CGAffineTransform(translationX: -200, y: 150)
            }
        }
    }
    
    
    
    @IBAction func removeAtTapped(_ sender: Any) {
        let reqNode = list.node(index: 2)!
        list.remove(node: reqNode)
        UIView.animate(withDuration: 0.8) {
            self.n4ujoint.alpha = 0
            self.n3pjoint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) {
                self.node4.alpha = 0
                self.node4.transform = CGAffineTransform(translationX: 200, y: -200)
            }

        }

    }
 

    // MARK: - Helper methods
    private func hideNodes() {
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
    
    private func hideBtns() {
        insertBtn.alpha = 0
        appendBtn.alpha = 0
        pushBtn.alpha = 0
        
        popbtn.alpha = 0
        removeAtBtn.alpha = 0
        removeLastBtn.alpha = 0
    }
    
    private func roundNodes() {
        node1.layer.cornerRadius = node1.frame.width / 2
        node2.layer.cornerRadius = node2.frame.width / 2
        node3.layer.cornerRadius = node3.frame.width / 2
        node4.layer.cornerRadius = node4.frame.width / 2
        node5.layer.cornerRadius = node5.frame.width / 2
    }
    
    private func disableBtns() {
        appendBtn.isEnabled = false
        insertBtn.isEnabled = false
        popbtn.isEnabled = false
        removeAtBtn.isEnabled = false
        removeLastBtn.isEnabled = false
    }
    
    private func transformBtn(_ btn: UIButton) {
        btn.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        btn.transform = CGAffineTransform.identity
    }
    
    
    

    


}

