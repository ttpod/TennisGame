//
//  Tennis.swift
//  TennisGame
//
//  Created by lihui on 14/11/11.
//  Copyright (c) 2014年 lihui. All rights reserved.
//

import Foundation

class Tennis {
    private var player1Name: String
    private var player2Name: String
    private let scoreNumber = ["Love","Fifteen","Thirty","Forty"]
    
    private var player1Score = 0
    private var player2Score = 0
    
    init(player1Name player1: String = "Player1", player2Name player2: String  = "Player2") {
        player1Name = player1
        player2Name = player2
    }

    func scoreOne(isPlayer1: Bool) -> String {
        if isPlayer1 {
            player1Score++
        } else {
            player2Score++
        }
        return score(player1Score: player1Score, player2Score: player2Score)
    }
    
    func score(#player1Score: Int, player2Score: Int) -> String {
        if player1Score == player2Score {
            if player1Score >= 3 {
                return "Deuce"
            }
            return scoreNumber[player1Score] + "-All"
        }
        
        let winnerName = player1Score > player2Score ? player1Name : player2Name
        if player1Score >= 4 || player2Score >= 4 {
            if abs(player1Score - player2Score) == 1 {
                return "Advantage " + winnerName
            }
            return "Game " + winnerName
        }
        return scoreNumber[player1Score] + "-" + scoreNumber[player2Score]
    }
}