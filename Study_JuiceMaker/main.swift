
//MARK: - 콘솔 JuiceMaker

/*
 readLine으로 주스 주문
 과일의 재고가 충분하다면 주스 제작 성공!
 과일의 재고 수정 -> readLine으로 수정

 원하시는 주스를 선택해 주세요.
 1. 딸기주스, 2. 바나나주스, 3. 파인애플주스, 4. 망고주스, 5. 키위주스, 6. 딸바파망키주스, 7. 과일 재고 수정, 0. 종료
 1. 딸기주스 -> 딸기 10개 / 2. 바나나주스 -> 바나나 2개 / 3. 파인애플주스 -> 파인애플 1개
 4. 망고주스 -> 망고 2개 / 5. 키위주스 -> 키위 3개 / 6. 딸바파망키주스 -> 각각 2개씩

 과일 재고 수정
 1. 딸기재고수정하기, 2. 바나나재고수정하기, 3. 파인애플재고수정하기, 4. 망고재고수정하기, 5. 키위재고수정하기
*/

import Foundation

//MARK: - 주스 메이커 반복
var repeatJuiceMaker = true
var store = PlayJuiceMaker()

while repeatJuiceMaker {
    store.start()
}

//MARK: - 주스 메이커 실행
class PlayJuiceMaker {
    var makeJuice = JuiceRecipe()
    public func start() {
        print(PrintText.printOrderText)
        guard let userInput = readLine() else {
            return
        }
        makeJuice.progressOrder(userOrder: userInput)
    }
}
