
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
