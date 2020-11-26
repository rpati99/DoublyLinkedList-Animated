//
//  DoublyLinkedList.swift
//  Doubly LinkedList
//
//  Created by Rachit Prajapati on 26/11/20.
//

import Foundation

public struct DoublyLinkedList<T> {
    public var head: Node<T>?
    public var tail: Node<T>?
    
    public init() { }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
}

extension DoublyLinkedList: CustomStringConvertible {
    public var description: String {
        var text = ""
        var textNode = head
        
        while textNode != nil {
            text += String(describing: textNode!.value)
            textNode = textNode?.next
            if textNode !=  nil { text += " <-> " }
        }
        
        return text
    }
    
}

// MARK: - Insertion methods

extension DoublyLinkedList {
    public mutating func push(_ value: T) {
        let newNode = Node(value: value)
        newNode.next = head
        head?.previous = newNode
        newNode.previous = nil
        head = newNode
        
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: T) {
        let newNode = Node(value: value)
         if let tailNode = tail {
             newNode.previous = tailNode
             tailNode.next = newNode
         } else {
             head = newNode
         }
         tail = newNode
    }
    
    @discardableResult
    public mutating func node(index: Int) -> Node<T>? {
        guard !isEmpty else { return nil }
        var currentNode = head
        var currentIndex = 0

        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }

        return currentNode
    }
    
    
    public mutating func insert(value: T, after node: Node<T>)  {
        guard tail !== node else {
            append(value)
            return
        }
        node.next = Node(value: value, previous: node.next!.next, next: node.next)
        
    }
    
    
}

 
 //MARK: - Removal methods

extension DoublyLinkedList {
    @discardableResult
    public mutating func pop() -> T? {
        defer {
            head = head?.next
            head?.previous = nil
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    @discardableResult
    public mutating func removeLast() -> T? {
        guard let head = head else { return nil }
        guard head.next != nil else  {
            return pop()
        }
        
        var previousNode = head
        var currentNode = head
        var ultraPrevious = head.previous
        
        while let nextNode = currentNode.next {
            ultraPrevious = previousNode
            previousNode = currentNode
            currentNode = nextNode
            
        }
        
        previousNode.next = nil
        previousNode.previous = ultraPrevious
        tail = previousNode
        
        return currentNode.value
        
    }
    
    @discardableResult
    public mutating  func remove(node: Node<T>) -> T? {
        let prev = node.previous
        let next = node.next
        
        //head case
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        
        next?.previous = prev
        
        //tail case
        if next == nil {
            tail = prev
        }

        
        node.previous = nil
        node.next = nil
        
        
        return node.value
    }
    
}
