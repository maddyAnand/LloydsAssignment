//
//  AssignmentViewModel.swift
//  AssignmentTests
//
//  Created by Anand Madhav on 29/01/25.
//

import XCTest
@testable import Assignment

final class AssignmentViewModelTest: XCTestCase {

    var assignmentViewModel: AssignmentViewModel!
    
    override func setUp() {
        assignmentViewModel = AssignmentViewModel(numberOfItems: 20)
    }

    override func tearDownWithError() throws {
        assignmentViewModel = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetTotalNumberOfItems() throws {
        XCTAssertNotNil(assignmentViewModel.getTotalNumberOfItems())
        XCTAssertEqual(assignmentViewModel.getTotalNumberOfItems(), 20)
    }
    
    func testGetItemAtIndex0() throws {
        let itemAtIndex0 = assignmentViewModel.getItem(atIndex: 0)
        XCTAssertNotNil(itemAtIndex0)
        XCTAssertEqual(itemAtIndex0.id, "1")
        XCTAssertEqual(itemAtIndex0.name, "Cell Number 1")
        XCTAssertEqual(itemAtIndex0.urlPath, "/id/1/")
        XCTAssertEqual(itemAtIndex0.imageResolution, "50/50") 
    }
    
    func testGetItemRandom() throws {
        let randomIndex =  Int.random(in: 0..<assignmentViewModel.getTotalNumberOfItems())
        let itemAtrandomIndex = assignmentViewModel.getItem(atIndex: randomIndex)
        let id = randomIndex + 1
        XCTAssertNotNil(itemAtrandomIndex)
        XCTAssertEqual(itemAtrandomIndex.id, "\(id)")
        XCTAssertEqual(itemAtrandomIndex.name, "Cell Number \(id)")
        XCTAssertEqual(itemAtrandomIndex.urlPath, "/id/\(id)/")
        XCTAssertEqual(itemAtrandomIndex.imageResolution, "50/50")
    }
}
