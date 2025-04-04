import XCTest

struct ArithmeticOperations {
    func addition(num1: Int, num2: Int, handler: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            handler(num1 + num2)
        }
    }
    
    func subtraction(num1: Int, num2: Int, handler: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            handler(num1 - num2)
        }
    }
    
    func multiplication(num1: Int, num2: Int, handler: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            handler(num1 * num2)
        }
    }
}

class MovieQuizTests: XCTestCase {
    func testAddition() throws {
        
        //Given
        let arithmeticOperations = ArithmeticOperations()
        let num1 = 1
        let num2 = 2
        
        //When
        let expectation = expectation(description: "Addition function expectation")
        
        arithmeticOperations.addition(num1: num1, num2: num2) { result in
            //Then
            XCTAssertEqual(result, 3)
            expectation.fulfill() // Когда результат функции будет получен мы скажем что ожидание было выполнено 
        }
        
        waitForExpectations(timeout: 2) //с помощью этой команды мы говорит тесту что ожидаем результат и надо подождать 2 секунды
    }
}
