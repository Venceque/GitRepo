//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport


class MyViewController : UIViewController {
    
    // 1.решить кывадратное уравнение
    
    //ax^2+bx+c=0  - само уравнение
    
    ///
    
    var a  = 5.0 // коэфициент числа
    var b  = -8.0 // коэфициент числа
    var c  = 3.0 // коэфициент числа
    var x1  = 0.0 // корень1
    var x2  = 0.0 // корень2
    
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        
        
        
        let discriminant =  (b*b) - (4 * a * c)
        
        
        if discriminant > 0 {           //если дискриминант больше нуля - то решений 2
            
            x1 =   (-b + sqrt(discriminant)) / (2*a)
            x2 =   (-b - sqrt(discriminant)) / (2*a)
            
            print(" Задача 1 : дискриминант - \(discriminant), первый корень  - \(x1) ,второй корень - \(x2)")
            print()
            
        }
            
        else if discriminant == 0 {  // если равен нулю - то корень один
            
            x1 = (-b + sqrt(discriminant)) / (2*a)
            print(" Задача 1 : дискриминант - \(discriminant),  корень  - \(x1) ")
        }
            
        else  if discriminant < 0{
            
            print("Задача 1: корней нет, так как дискриминант меньше нуля")
        }
        
        
        
        
        // 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
        
        let СatA = 3.0// катет а
        let СatB = 4.0 //  катет b
        let PL = (СatA * СatB) / 2.0 //площадь
        let HypC = sqrt((СatA * СatA) + (СatB * СatB)) // гипотенузa
        let Pr = (СatB + СatA) + HypC //периметр
        print(" Задача 2: Площадь  - \(PL), периметр - \(Pr) гипотенузa - \(HypC)")
        print()
        
        
        
        
        
        
        //3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
        
        
       let depositMoney = 25.000
       let yearPercent = 12.5
       let after5YearsMoney = sumAfter5Years(sumOfDeposit: depositMoney, yearPercent: yearPercent)
        print(" Задача 3: Сумма депозита после 5 лет = \(after5YearsMoney) ")
    }
    
    
    func   sumAfter5Years(sumOfDeposit:Double ,yearPercent:Double) -> Double {
        
        var sum = sumOfDeposit
        
        
        for _ in 1...5    {
            
        sum =   sum + sum/100 * yearPercent
            
        }
        
        return sum
    }
    
    
    
    
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
