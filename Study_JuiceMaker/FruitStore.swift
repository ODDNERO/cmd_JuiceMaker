
import Foundation

//MARK: - 과일 재고 저장
class FruitStore {
    var strawberryStock: Int = 20
    var bananaStock: Int = 20
    var pineappleStock: Int = 20
    var mangoStock: Int = 20
    var kiwiStock: Int = 20
    
    //MARK: - 주스 제조 가능한지 체크
    func makeJuiceRecipe(fruit: Fruit, necessaryStock: Int) -> Bool {
        switch fruit {
        case .strawberry:
            if strawberryStock >= necessaryStock {
                strawberryStock -= necessaryStock
                return true
            }
            return false
        case .banana:
            if bananaStock >= necessaryStock {
                bananaStock -= necessaryStock
                return true
            }
            return false
        case .pineapple:
            if pineappleStock >= necessaryStock {
                pineappleStock -= necessaryStock
                return true
            }
            return false
        case .mango:
            if mangoStock >= necessaryStock {
                mangoStock -= necessaryStock
                return true
            }
            return false
        case .kiwi:
            if kiwiStock >= necessaryStock {
                kiwiStock -= necessaryStock
                return true
            }
            return false
        }
    }
    
    //MARK: - 과일 재고 수정
    func changeStockInput() -> Int {
        print(PrintText.printChangeStock.description)
        guard let changeStock = readLine() else {
            return 0
        }
        return Int(changeStock) ?? 0
    }
    
    func changeFruitStock() {
        print(PrintText.printChoiceChangeNumber.description)
        print(PrintText.printFruitStock(
            strawberryStock, bananaStock, pineappleStock, mangoStock, kiwiStock).description)
        guard let userChoice = readLine() else {
            return
        }
        switch userChoice {
        case "1":
            strawberryStock = changeStockInput()
        case "2":
            bananaStock = changeStockInput()
        case "3":
            pineappleStock = changeStockInput()
        case "4":
            mangoStock = changeStockInput()
        case "5":
            kiwiStock = changeStockInput()
        default:
            return
        }
    }
}
