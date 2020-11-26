//
//  Node.swift
//  Doubly LinkedList
//
//  Created by Rachit Prajapati on 26/11/20.
//

import Foundation

public class Node<T> {
    public var value: T
    public var next: Node?
    public weak var previous: Node?
    
    public init(value: T, previous: Node? = nil, next: Node? = nil) {
        self.value = value
        self.previous = previous
        self.next = next
        
    }
}


