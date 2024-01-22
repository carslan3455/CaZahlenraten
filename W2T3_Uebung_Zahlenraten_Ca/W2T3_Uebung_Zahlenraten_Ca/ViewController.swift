import UIKit

class ViewController: UIViewController 
{
    public static var text: String = ""
    
    private let vonWo: String = "VC"
    public let tv: MyLibrary.MyTextView = MyLibrary.MyTextView().create()

    private let btn: MyLibrary.MyButton = MyLibrary.MyButton().create()
    private let tf: MyLibrary.MyTextField = MyLibrary.MyTextField().create()
    
    //---------------------------------------------------------------------

    @objc func klick()
    {
        if(tf.text != ""){
            ViewController.text = tf.text!
            navigationController?.pushViewController(VC2(), animated: true)
        }
        else
        {
            tv.text = "Geben Sie Ihre Name ein..."
            tv.textColor = .red
        }
    }
    
    //---------------------------------------------------------------------
    
    override func viewWillAppear(_ animated: Bool)
    {
        
       // ViewController.text = VC2.text
        print("\(vonWo): \(#function)")
       // tv.print("\(vonWo): \(#function)")
    }
    
    //---------------------------------------------------------------------
    
    override func viewDidAppear(_ animated: Bool)
    {
        print("\(vonWo): \(#function)")
       // tv.print("\(vonWo): \(#function)")
        
        
      
    }
    
    //---------------------------------------------------------------------
    
    override func viewWillDisappear(_ animated: Bool)
    {
        print("\(vonWo): \(#function)")
      //  tv.print("\(vonWo): \(#function)")
        
    }
    
    //---------------------------------------------------------------------
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("\(vonWo): \(#function)")
       // tv.print("\(vonWo): \(#function)")
        
    }
    
    //---------------------------------------------------------------------
    
    override func viewDidLoad()
    {
        print("----------------------")
        print("\(vonWo): \(#function)")
       // tv.print("\(vonWo): \(#function)")
        
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        
        navigationItem.title = "Zahlenraten - Anmeldung"
       // print(navigationController?.navigationBar.frame.height)
        
        view.addSubview(tf)
        tf.frame = CGRect(x: 20, y: 114, width: view.frame.width - 40, height: 50)
        tf.placeholder = "Geben Sie ein Name ein..."
        
        view.addSubview(btn)
        btn.setTitle("Spiel Starten", for: .normal)
        btn.frame = CGRect(x: 20, y: 174, width: view.frame.width - 40, height: 50)
        btn.addTarget(self, action: #selector(klick), for: .touchUpInside)
        
        view.addSubview(tv)
        tv.frame = CGRect(x: 20, y: 250, width: view.frame.width - 40, height: 50)
        
    }


}

