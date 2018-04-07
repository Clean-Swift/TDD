//
//  GreetingTests.swift
//  TDDTests
//
//  Created by Raymond Law on 4/4/18.
//  Copyright © 2018 Clean Swift LLC. All rights reserved.
//

@testable import TDD
import XCTest

class GreetingTests: XCTestCase
{
  // MARK: - Subject under test
  
  var sut: Greeting!
  var firstName: String?
  var lastName: String?

  // MARK: - Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupGreeting()
    firstName = nil
    lastName = nil
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: - Test setup
  
  func setupGreeting()
  {
    sut = Greeting()
  }
  
  // MARK: - Test doubles
  
  // MARK: - Tests
  
  func testGenerateShouldReturnNilWithNilFirstAndLastName()
  {
    // Given
    
    // When
    let greeting = sut.generate(firstName: firstName, lastName: lastName)
    
    // Then
    XCTAssertNil(greeting, "generate(firstName:lastName:) should return nil without first and last names")
  }
  
  func testGenerateShouldReturnFriendlyGreetingWithJustFirstName()
  {
    // Given
    firstName = "Raymond"
    
    // When
    let greeting = sut.generate(firstName: firstName, lastName: lastName)
    
    // Then
    XCTAssertEqual(greeting, "Hi Raymond.", "generate(firstName:lastName:) should return a friendly greeting with just the first name")
  }
  
  func testGenerateShouldReturnFormalGreetingWithJustLastName()
  {
    // Given
    lastName = "Law"
    
    // When
    let greeting = sut.generate(firstName: firstName, lastName: lastName)
    
    // Then
    XCTAssertEqual(greeting, "Hello, Mr. Law.", "generate(firstName:lastName:) should return a formal greeting with just the last name")
  }
  
  func testGenerateShouldReturnFullGreetingWithBothFirstAndLastName()
  {
    // Given
    firstName = "Raymond"
    lastName = "Law"
    
    // When
    let greeting = sut.generate(firstName: firstName, lastName: lastName)
    
    // Then
    XCTAssertEqual(greeting, "Good to see you, Mr. Raymond Law.", "generate(firstName:lastName:) should return a full greeting with both first and last names")
  }
}
