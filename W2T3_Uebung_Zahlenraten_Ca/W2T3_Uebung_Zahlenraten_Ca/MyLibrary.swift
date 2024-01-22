import Foundation
import UIKit

public class MyLibrary
{
    //============================================
    public class MyTextView: UITextView
    {
        public func create() -> MyTextView
        {
            isEditable = false
            layer.cornerRadius = 7
            clipsToBounds = true
            layer.borderWidth = 1
            backgroundColor = .white
            textColor = .black
            font = UIFont.systemFont(ofSize: 17)
            return self;
        }
        
        
        public func print(_ text: Any?)
        {
            self.text += (text != nil) ? "\(text!)" : "nil"
            self.text += "\n"
            
        }
        
        public func get() -> UITextView
        {
            return self
        }
        
        public func scroll2buttom()
        {
            let indexLetztesZeichen = self.text.count - 1
            let unten = NSRange(location: indexLetztesZeichen, length: 1)
            self.scrollRangeToVisible(unten)
        }
        
        public func scroll2top()
        {
            self.scrollRangeToVisible(NSRange(location: 0, length: 1))
            
        }
    }
    
    public class MyLabel: UILabel
    {
        public func create() -> MyLabel
        {
            
            layer.cornerRadius = 7
            clipsToBounds = true
            layer.borderWidth = 1
            backgroundColor = .white
            textColor = .black
            font = UIFont.systemFont(ofSize: 17)
            return self;
        }
        
        
        public func print(_ text: Any?)
        {
            self.text! += (text != nil) ? "\(text!)" : "nil"
            self.text! += "\n"
            
        }
        
        public func get() -> UILabel
        {
            return self
        }
    }
    
    public class MyTextField: UITextField
    {
        public func create() -> MyTextField
        {
            
            backgroundColor = .white
            layer.cornerRadius = 20
            borderStyle = .bezel
            layer.borderWidth = 2
            clipsToBounds = true
            placeholder = ""
            return self
        }
        
        public func print(_ text: Any?)
        {
            self.text! += (text != nil) ? "\(text!)" : "nil"
            self.text! += "\n"
            
        }
        
        public func get() -> UITextField
        {
            return self
        }
        
    }
    
    public class MyButton: UIButton
    {
        public func create() -> MyButton
        {
            
            backgroundColor = .systemGray
            setTitleColor(.white, for: .normal)
            setTitleColor(.red, for: .highlighted)
            layer.cornerRadius = 7
            clipsToBounds = true
            layer.borderWidth = 1
            return self;
        }
    }
    public struct MyCGRecht
    {
        private var x, y, width, height: CGFloat
        private let rect : CGRect
        
        init(vw : UIView, x: CGFloat = 13, y: CGFloat = 70, width: Double? = nil, height: Double? = nil)
        {
            self.x = x
            self.y = y
            self.width = (width == nil) ? vw.frame.width - 2 * x : width!
            self.height = (height == nil) ? vw.frame.height - y - 50 : height!
            self.rect = CGRect(x: self.x, y: self.y, width: self.width, height: self.height)
        }
        
        public func getRect() -> CGRect
        {
            return self.rect
        }
    }
}
