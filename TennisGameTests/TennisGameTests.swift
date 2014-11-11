//
//  TennisGameTests.swift
//  TennisGameTests
//
//  Created by lihui on 14/11/11.
//  Copyright (c) 2014年 lihui. All rights reserved.
//

import Cocoa
import XCTest

class TennisGameTests: XCTestCase {
    
    var tennis:Tennis!
    
    override func setUp() {
        super.setUp()
        tennis = Tennis()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStartGame() {
        XCTAssertEqual("Love-All", tennis.score(player1Score:0,player2Score:0), "")
    }
    
    func testPlayer1OnePlayer2Zero() {
        XCTAssertEqual("Fifteen-Love", tennis.score(player1Score:1,player2Score:0), "")
    }
    
    func testPlayer1OnePlayer2One() {
        XCTAssertEqual("Fifteen-All", tennis.score(player1Score:1,player2Score:1), "")
    }
    
    func testPlayer1ZeroPlayer2One() {
        XCTAssertEqual("Love-Fifteen", tennis.score(player1Score:0,player2Score:1), "")
    }
    
    func testPlayer1TwoPlayer2One() {
        XCTAssertEqual("Thirty-Fifteen", tennis.score(player1Score:2,player2Score:1), "")
    }
    
    func testPlayer1TwoPlayer2Two() {
        XCTAssertEqual("Thirty-All", tennis.score(player1Score:2,player2Score:2), "")
    }
    
    func testPlayer1ThreePlayer2Zero() {
        XCTAssertEqual("Forty-Love", tennis.score(player1Score:3,player2Score:0), "")
    }
    
    func testPlayer1ThreePlayer2One() {
        XCTAssertEqual("Forty-Fifteen", tennis.score(player1Score:3,player2Score:1), "")
    }

    func testPlayer1ThreePlayer2Three() {
        XCTAssertEqual("Deuce", tennis.score(player1Score:3,player2Score:3), "")
    }
    
    func testPlayer1FourPlayer2Zero() {
        XCTAssertEqual("Game Player1", tennis.score(player1Score:4,player2Score:0), "")
    }
    
    func testPlayer1FourPlayer2One() {
        XCTAssertEqual("Game Player1", tennis.score(player1Score:4,player2Score:1), "")
    }
    
    func testPlayer1FourPlayer2Four() {
        XCTAssertEqual("Deuce", tennis.score(player1Score:4,player2Score:4), "")
    }
    
    func testPlayer1ZeroPlayer2Four() {
        XCTAssertEqual("Game Player2", tennis.score(player1Score:0,player2Score:4), "")
    }
    
    func testPlayer1FivePlayer2Four() {
        XCTAssertEqual("Advantage Player1", tennis.score(player1Score:5,player2Score:4), "")
    }
    
    func testPlayer1FourPlayer2Three() {
        XCTAssertEqual("Advantage Player1", tennis.score(player1Score:4,player2Score:3), "")
    }
    
    func testPlayer1ThreePlayer2Four() {
        XCTAssertEqual("Advantage Player2", tennis.score(player1Score:3,player2Score:4), "")
    }
    
    func testPlayer1FivePlayer2Three() {
        XCTAssertEqual("Game Player1", tennis.score(player1Score:5,player2Score:3), "")
    }
    
    func testPlayerThreePlayer2Five() {
        XCTAssertEqual("Game Player2", tennis.score(player1Score:3,player2Score:5), "")
    }
    
    func testPlayerThreePlayer2FiveCustomNames() {
        let tennis = Tennis(player1Name: "Nan D", player2Name: "Black G")
        XCTAssertEqual("Game Black G", tennis.score(player1Score:3,player2Score:5), "")
    }
    
    func testPlayer1_58Player2_59() {
        XCTAssertEqual("Advantage Player2", tennis.score(player1Score:58,player2Score:59), "")
    }
}
