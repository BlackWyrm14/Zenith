import Foundation;

print("Zenith")
print("------")

func Calculate(num1: Double, num2: Double, operation:String) -> Double? {
    switch operation{
     case "+": 
        return num1+num2
    case "-":
        return num1-num2
    case "*":
        return num1*num2
    case "/":
        if num2 == 0 {
            print("Error: Cannot divide by zero.")
            return nil
        }
        return num1/num2
        default:
            print("Error: Invalid Operation")
            return nil 
    }
}

print("Enter the first Number: ")
if let input1 = readLine(), let number1 = Double(input1) {
    print("Enter the second number: ")
    if let input2 = readLine(), let number2 = Double(input2) {
        print("Enter the operation (+, -, *, /): ")
        if let operation = readLine() {
         if let result = Calculate(num1: number1, num2: number2, operation: operation) {
            print("Result: \(number1) \(operation) \(number2) = \(result)")            
         }
        } else {
            print("Error: Could not read the operation. ")
         }
            
        } else {
            print("Error: Invalid second number. ")
        }
    } else {
        print("Error: Invalid first number. ")
        
    }