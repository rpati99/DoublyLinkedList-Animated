//
//  ActionExtensions.swift
//  Doubly LinkedList
//
//  Created by Rachit Prajapati on 10/11/21.
//


import Foundation
import UIKit

// MARK: -  IBActions
extension ViewController {
    @IBAction func plusTapped(_ sender: Any) {
        UIView.animate(withDuration: 1.0) { [self] in
            pushBtn.alpha = 1
            appendBtn.alpha = 1
            insertBtn.alpha = 1
            pushBtn.transform()
            appendBtn.transform()
            insertBtn.transform()
            
        }
    }
    
    @IBAction func minusTapped(_ sender: Any) {
        UIView.animate(withDuration: 1.0) { [self] in
            popbtn.alpha = 1
            removeLastBtn.alpha = 1
            removeAtBtn.alpha = 1
            popbtn.transform()
            removeAtBtn.transform()
            removeLastBtn.transform()
        }

    }
    
    @IBAction func pushTapped(_ sender: Any) {
        appendBtn.isEnabled = true
        appendBtn.setTitleColor(.link
                                , for: .normal)
        n1Label.text = inputTxtField.text ?? " "
        list.push(n1Label.text!)
        
        UIView.animate(withDuration: 2) { [self] in
            node1.alpha = 1
            node1.transform = CGAffineTransform(scaleX: 5, y: 5)
            node1.transform = CGAffineTransform(translationX: 400, y: 400)
            node1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 3)
    
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) { [self] in
                node1.transform = CGAffineTransform.identity
                n1pjoint.alpha = 1
                n2ujoint.alpha = 1
            }
        }
    }
    
    @IBAction func appendTapped(_ sender: Any) {
        insertBtn.isEnabled = true
        insertBtn.setTitleColor(.link, for: .normal)
        n5Label.text = inputTxtField.text ?? " "
        list.append(n5Label.text!)
        
        UIView.animate(withDuration: 2.5) { [self] in
            node5.alpha = 1
            node5.transform = CGAffineTransform(scaleX: 3, y: 3)
            node5.transform = CGAffineTransform(translationX: 200, y: -150)
            node5.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 3)
        } completion: { (true) in
            UIView.animate(withDuration: 0.7) { [self] in
                node5.transform = CGAffineTransform.identity
                n5ujoint.alpha = 1
                n3pjoint.alpha = 1
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
        
        UIView.animate(withDuration: 1.0) { [self] in
            n5Constraint.constant = 29
            n5ujoint.alpha = 0
            n3pjoint.alpha = 0
            view.layoutIfNeeded()
        } completion: { (true) in
            UIView.animate(withDuration: 1.8) { [self] in
                node4.alpha = 1
                node4.transform = CGAffineTransform(scaleX: 3, y: 3)
                node4.transform = CGAffineTransform(translationX: -200, y: 200)
                node4.transform =   CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            } completion: { (true) in
                UIView.animate(withDuration: 0.7) { [self] in
                    node4.transform = CGAffineTransform.identity
                    n3pjoint.alpha = 1
                    n5ujoint.alpha = 1
                    n4ujoint.alpha = 1
                    n4pjoint.alpha = 1
                }
            }

        }
    }
    
    
    @IBAction func popTapped(_ sender: Any) {
        list.pop()
        UIView.animate(withDuration: 0.7) { [self] in
            n1pjoint.alpha = 0
            n2ujoint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 1.5) { [self] in
                node1.alpha = 0
                node1.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        }
    }
    
    
    @IBAction func removeLastTapped(_ sender: Any) {
        list.removeLast()
        UIView.animate(withDuration: 0.8) { [self] in
            n5ujoint.alpha = 0
            n4pjoint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) { [self] in
                node5.alpha = 0
                node5.transform = CGAffineTransform(translationX: -200, y: 150)
            }
        }
    }
    
    
    
    @IBAction func removeAtTapped(_ sender: Any) {
        let reqNode = list.node(index: 2)!
        list.remove(node: reqNode)
        UIView.animate(withDuration: 0.8) { [self] in
            n4ujoint.alpha = 0
            n3pjoint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) { [self] in
                node4.alpha = 0
                node4.transform = CGAffineTransform(translationX: 200, y: -200)
            }

        }

    }
}


