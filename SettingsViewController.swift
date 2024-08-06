import UIKit
import Firebase

class SettingsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func logOutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "toViewController", sender: nil)
            }
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}
