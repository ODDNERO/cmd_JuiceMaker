//
//  PrintText.swift
//  Study_JuiceMaker
//
//  Created by NERO on 12/31/23.
//

import Foundation

enum PrintText {
    //MARK: - 주스 메뉴 출력 함수
    case printOrderText
    
    //MARK: - 주문 텍스트 출력
    case printStrawberryJuice
    case printBananaJuice
    case printPineappleJuice
    case printMangoJuice
    case printKiwiJuice
    case printDdalbapamangkiJuice
    case printManageFruitStock
    case printCloseJuiceMaker
    
    case printInformChoice
    case printInformChoice2
    case printWrongInput
    case printChoiceChangeNumber
    case printChangeStock
    
    //MARK: - 주문 성공 여부 출력
    case printSuccessOrder
    case printFailOrder
    
    //MARK: - 현재 과일 재고 출력
    case printFruitStock(Int, Int, Int, Int, Int)
    
    //MARK: - 주문 텍스트 출력 함수 (을/를 구분) 
    func printSelectedOrder(choice: String) {
        choice == PrintText.printManageFruitStock.description ?
        print("\(choice)\(PrintText.printInformChoice2.description)") :
        print("\(choice)\(PrintText.printInformChoice.description)")
    }
}

//MARK: - 케이스에 따른 출력 내용
extension PrintText: CustomStringConvertible {
    var description: String {
        switch self {
            
        case .printStrawberryJuice: "딸기주스"
        case .printBananaJuice: "바나나주스"
        case .printPineappleJuice: "파인애플주스"
        case .printMangoJuice: "망고주스"
        case .printKiwiJuice: "키위주스"
        case .printDdalbapamangkiJuice: "딸바파망키주스"
            
        case .printManageFruitStock: "과일 재고 수정"
        case .printCloseJuiceMaker: "종료"
            
        case .printOrderText:
            """
            원하시는 주스의 숫자를 입력해 주세요.
            1. 딸기주스
            2. 바나나주스
            3. 파인애플주스
            4. 망고주스
            5. 키위주스
            6. 딸바파망키주스
            7. 과일 재고 수정
            0. 종료
            """
        case .printFruitStock(
            let strawberryStock, let bananaStock,
            let pineappleStock, let mangoStock, let kiwiStock):
            """
            현재 과일 재고:
            1. 딸기: \(strawberryStock)개
            2. 바나나: \(bananaStock)개
            3. 파인애플: \(pineappleStock)개
            4. 망고: \(mangoStock)개
            5. 키위: \(kiwiStock)개
            """
        
        case .printInformChoice: "를 선택하셨습니다."
        case .printInformChoice2: "을 선택하셨습니다."
            
        case .printChoiceChangeNumber: "수정할 과일의 숫자를 입력해 주세요."
        case .printChangeStock: "몇 개로 수정할까요?"
            
        case .printWrongInput: "잘못된 입력입니다. 다시 입력해 주세요."
            
        case .printSuccessOrder: "주스 제조 성공!"
        case .printFailOrder: "주스 제조 실패... 재고를 수정해 주세요!"
        }
    }
}
