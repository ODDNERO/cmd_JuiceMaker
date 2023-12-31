
import Foundation

struct JuiceRecipe {
    
    //MARK: - 주스 제조/처리를 위한 과일 재고 변수 생성
    var fruitStock = FruitStore()
    
    func makeJuice(fruit: Fruit, necessaryStock: Int) -> Bool {
        switch fruit {
        case .strawberry:
            return fruitStock.makeJuiceRecipe(fruit: .strawberry, necessaryStock: necessaryStock)
            
        case .banana:
            return fruitStock.makeJuiceRecipe(fruit: .banana, necessaryStock: necessaryStock)
            
        case .pineapple:
            return fruitStock.makeJuiceRecipe(fruit: .pineapple, necessaryStock: necessaryStock)
            
        case .mango:
            return fruitStock.makeJuiceRecipe(fruit: .mango, necessaryStock: necessaryStock)
            
        case .kiwi:
            return fruitStock.makeJuiceRecipe(fruit: .kiwi, necessaryStock: necessaryStock)
        }
    }
    
    func makeDdabapamangkiJuice() {
        if (fruitStock.strawberryStock >= 2),
           (fruitStock.bananaStock >= 2),
           (fruitStock.pineappleStock >= 2),
           (fruitStock.mangoStock >= 2),
           (fruitStock.kiwiStock >= 2) {
            fruitStock.strawberryStock -= 2
            fruitStock.bananaStock -= 2
            fruitStock.pineappleStock -= 2
            fruitStock.mangoStock -= 2
            fruitStock.kiwiStock -= 2
            print(PrintText.printSuccessOrder.description)
            return
        } else {
            print(PrintText.printFailOrder.description)
            return
        }
    }
    
    
    //MARK: - 주문 처리 진행
    func makeJuiceResult(choice: PrintText, fruit: Fruit, necessaryStock: Int) {
        let printMessage = PrintText.printOrderText
        
        printMessage.printSelectedOrder(choice: choice.description)
        makeJuice(fruit: fruit, necessaryStock: necessaryStock) ?
        print(PrintText.printSuccessOrder.description) :
        print(PrintText.printFailOrder.description)
    }
    
    func progressOrder(userOrder: String) {
        let printMessage = PrintText.printOrderText
        
        switch userOrder {
        case "1":
            makeJuiceResult(choice: PrintText.printStrawberryJuice, fruit: Fruit.strawberry, necessaryStock: 10)
        case "2":
            makeJuiceResult(choice: PrintText.printBananaJuice, fruit: Fruit.banana, necessaryStock: 2)
        case "3":
            makeJuiceResult(choice: PrintText.printPineappleJuice, fruit: Fruit.pineapple, necessaryStock: 1)
        case "4":
            makeJuiceResult(choice: PrintText.printMangoJuice, fruit: Fruit.mango, necessaryStock: 2)
        case "5":
            makeJuiceResult(choice: PrintText.printKiwiJuice, fruit: Fruit.kiwi, necessaryStock: 3)
        case "6":
            printMessage.printSelectedOrder(choice: PrintText.printDdalbapamangkiJuice.description)
            makeDdabapamangkiJuice()
        case "7":
            printMessage.printSelectedOrder(choice: PrintText.printManageFruitStock.description)
            fruitStock.changeFruitStock()
            return
        case "0":
            printMessage.printSelectedOrder(choice: PrintText.printCloseJuiceMaker.description)
            repeatJuiceMaker.toggle()
        default:
            print(PrintText.printWrongInput.description)
            return
        }
    }
}
