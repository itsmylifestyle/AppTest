//
//  AppTestUITests.swift
//  AppTestUITests
//
//  Created by Айбек on 08.01.2024.
//

import XCTest

final class AppTestUITests: XCTestCase {
    
    
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let add = app.navigationBars["AppTest.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textFiled = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let ok = elementsQuery.buttons["OK"]
        
        let addedCell = app.tables.cells.containing(.staticText, identifier: "...").element
        
        let tablesQuery = app.tables
        let deleteButton = tablesQuery.buttons["Delete"]
        
        add.tap()
        textFiled.tap()
        textFiled.typeText("...")
        ok.tap()
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
    }
}
