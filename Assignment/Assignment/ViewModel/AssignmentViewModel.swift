//
//  AssignmentViewModel.swift
//  Assignment
//
//  Created by Anand Madhav on 29/01/25.
//

import Foundation

final class AssignmentViewModel {
    private let numberOfItems: Int
    private var photos: [AssignmentModel] = []
    
    init(numberOfItems: Int = 10) {
        self.photos = (1...numberOfItems).map {
            AssignmentModel(id: "\($0)", name: "Cell Number \($0)", urlPath: "/id/\($0)/", imageResolution: "50/50")
        }
        self.numberOfItems = numberOfItems
    }
    
    func getItem(atIndex index: Int) -> AssignmentModel {
        photos[index]
    }
    
    func getTotalNumberOfItems() -> Int {
        numberOfItems
    }
    
}
