//
//  CardManager.swift
//  Todo_List
//
//  Created by jinseo park on 4/13/21.
//

import Foundation

//Drag&Drop시 Drag할 때 픽업한 카드가 있는 보드type, 그리고 index를 저장할 수 있는 싱글톤객체 입니다.
class CardManager {
    static let shared = CardManager()
    
    var boardType : Board.CardType
    var indexPathSection : Int
    
    private init() {
        boardType = .todo
        indexPathSection = -1
    }
    
    func setCard(type : Board.CardType, index : Int) {
        boardType = type
        indexPathSection = index
    }
    func getBoardType() -> Board.CardType {
        return boardType
    }
    func getIndexPathSection() -> Int {
        return indexPathSection
    }
    
}
