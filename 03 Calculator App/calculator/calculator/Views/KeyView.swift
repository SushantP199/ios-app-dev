//
//  KeyView.swift
//  calculator
//
//  Created by iSushant on 15/12/22.
//

import SwiftUI

struct KeyView: View {
    
    @State var value = ""
    @State var operandOne = 0.0
    @State var operation: String = "#"
    @State var operandTwo = 0.0
    @State private var changeColor = true
    @State private var showAlert: Bool = false
    @State private var errorMessage: String = ""
    
    let buttons: [[Keys]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(changeColor ? Color("DigitColor").opacity(0.3) : Color.pink.opacity(0.2))
                .frame(width: 400, height: 320, alignment: .center)
                .scaleEffect(changeColor ? 1.5 : 1.0)
                .animation(Animation.spring().speed(0.2).repeatForever(), value: changeColor)
                .onAppear(perform: {
                    self.changeColor.toggle()
                })
                .overlay(
                    VStack {
                        Text(value)
                            .font(.system(size: 120))
                            .fontWeight(.bold)
                        
                        HStack (alignment: .bottom) {
                            (operandOne != 0) ? Text("\(String(format: "%g", operandOne))") : Text("")
                            (operation != "#") ? Text(operation) : Text("")
                            (operandTwo != 0) ? Text(String(format: "%g", operandTwo)) : Text("")
                        }
                        .foregroundColor(Color.black.opacity(0.4))
                        .font(.system(size: 20))
                    }
                )
            
            Spacer(minLength: 20)
            
            ForEach(buttons, id: \.self) { buttonRow in
                HStack (spacing: 10) {
                    ForEach(buttonRow, id: \.self) { button in
                        Button {
                            self.calculation(button: button)
                        } label: {
                            RoundedRectangle(cornerRadius: self.getWidth(button: button) / 2)
                                .foregroundColor(button.buttonColor)
                                .overlay(
                                    Text(button.rawValue)
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 30))
                                )
                                .frame(width: self.getWidth(button: button), height: self.getHeight(button: button))
                        }
                    }
                }
            }
        }
        .alert(errorMessage, isPresented: $showAlert) {
            Button ("OK", role: .cancel, action: {})
        }
    }
    
    func getWidth (button: Keys) -> CGFloat {
        if button == .zero {
            return ((UIScreen.main.bounds.width - (5 * 10)) / 2) + 10
        }
        
        return (UIScreen.main.bounds.width - (5 * 10)) / 4
    }
    
    func getHeight (button: Keys) -> CGFloat {
        return (UIScreen.main.bounds.width - (5 * 10)) / 4
    }
    
    func calculation (button: Keys) {
        switch button {
        case .add, .subtract, .multiply, .divide:
            if let operand = Double(self.value) {
                self.operandOne = operand
                self.operation = button.rawValue
            }
            self.value = ""
            self.operandTwo = 0
        case .negative:
            if let operand = Double(self.value) {
                let result = operand * (-1)
                self.value = "\(result)"
            }
        case .percent:
            if let operand = Double(self.value) {
                let result = operand / 100
                self.value = "\(result)"
            }
        case .equal:
            if let operand = Double(self.value) {
                self.operandTwo = operand
                var result = 0.0
                
                switch self.operation {
                case "+": result = self.operandOne + self.operandTwo
                case "-": result = self.operandOne - self.operandTwo
                case "x": result = self.operandOne * self.operandTwo
                case "÷": result = self.operandOne / self.operandTwo
                default: result = 0
                }
                
                self.value = String(format: "%g", result)
                
                if (self.value.contains(".") && self.value.count > 6) || self.value.count > 5 {
                    self.value = ""
                    self.errorMessage = "Output Format must be <d><d><d><d>.<d> (ex. 8538.6) or <d><d><d><d><d> (ex. 78788) where d = digit"
                    self.showAlert =  true
                }
            }
        case .clear:
            self.value = ""
            self.operandOne = 0.0
            self.operandTwo = 0.0
            self.operation = "#"
        case .decimal:
            if !self.value.contains(".") {
                self.value = self.value + "."
            }
        default:
            if (self.value.contains(".") && self.value.count <= 3) || self.value.count <= 1 {
                self.value = (self.value == "0") ? button.rawValue : self.value + button.rawValue
            } else {
                self.errorMessage = "Input Format must be <d><d> (ex. 76), <d>.<d><d> (ex. 4.04) or <d>.<d><d> (ex.78.3) where d = digit"
                self.showAlert = true
            }
        }
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView()
    }
}
