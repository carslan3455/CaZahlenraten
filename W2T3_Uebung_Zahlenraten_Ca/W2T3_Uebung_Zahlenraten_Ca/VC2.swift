import Foundation
import UIKit

class VC2: UIViewController
{
    public static var text: String = ""
    public var count: UInt = 0
    public static var name: String = ""
    private var randomZahl:Int = 0
    
    private let vonWo: String = "--> VC2"
    
    private let tv: MyLibrary.MyTextView = MyLibrary.MyTextView().create()
    private let btn: MyLibrary.MyButton = MyLibrary.MyButton().create()
    private let tf: MyLibrary.MyTextField = MyLibrary.MyTextField().create()
    
    //---------------------------------------------------------------------
    
    override func viewWillAppear(_ animated: Bool)
    {
        print("\(vonWo): \(#function)")
       // tv.print("\(vonWo): \(#function)")
    }
    
    //---------------------------------------------------------------------
    
    override func viewDidAppear(_ animated: Bool)
    {
       // ViewController.text = VC2.text
        print("\(vonWo): \(#function)")
        
    }
    
    //---------------------------------------------------------------------
    
    override func viewWillDisappear(_ animated: Bool)
    {
        print("\(vonWo): \(#function)")
        
        
      //  ViewController.text = VC2.text
    }
    
    //---------------------------------------------------------------------
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("\(vonWo): \(#function)")
        
    }
    
    
    //---------------------------------------------------------------------

    
    @objc func ueberprueft()
    {
        
        
        if(tf.text != ""){
            let ratenzahl: Int = Int(tf.text!)!
            count += 1
            
            if(ratenzahl < randomZahl)
            {
                tv.text = "Dein Zahl ist klein \(VC2.name)..."
                tv.textColor = .red
                //count += 1
            }
            else if (ratenzahl > randomZahl )
            {
                tv.text = "Dein Zahl ist gross \(VC2.name)..."
                tv.textColor = .red
               // count += 1
            }
            else if (ratenzahl == randomZahl)
            {
               // count += 1
                tv.text = "Richtig \(VC2.name), Du hast \(count) Versucht gebraucht..."
                tv.textColor = .green
                btn.isEnabled = false
            }
        }
        else
        {
            tv.text = "Geben ein Zahl ein!!! \(VC2.name)"
            tv.textColor = .red
        }

        
    }
    
    //---------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        navigationItem.title = "Zahlenraten - Spiel"
        
        VC2.name = ViewController.text
        view.addSubview(tf)
        tf.frame = CGRect(x: 20, y: 114, width: view.frame.width - 40, height: 50)
        tf.placeholder = " 1 bis 100 geben Sie einen Zahl ein..."
        tf.keyboardType = .numberPad
        
        randomZahl = Int.random(in: 0 ... 100)
        
        view.addSubview(btn)
        btn.setTitle("Spiel", for: .normal)
        btn.frame = CGRect(x: 20, y: 174, width: view.frame.width - 40, height: 50)
        btn.addTarget(self, action: #selector(ueberprueft), for: .touchUpInside)
        
        view.addSubview(tv)
        tv.frame = CGRect(x: 20, y: 250, width: view.frame.width - 40, height: 100)
        
        
        
    }
}
