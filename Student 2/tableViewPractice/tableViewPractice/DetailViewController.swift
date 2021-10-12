//
//  DetailViewController.swift
//  tableViewPractice
//
//  Created by Tyler Christensen on 10/12/21.
//

import UIKit

protocol DetailViewControllerDelegate {
    func didCreateNewPetName(_: PetName)
    func didEditPetName(_: PetName)
}

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var animalTextField: UITextField!
    
    var delegate: DetailViewControllerDelegate?
    
    var petName: PetName?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Add New Pet Name"
        
        nameTextField.text = petName?.name
        animalTextField.text = petName?.animal
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        guard let name = nameTextField.text, let animal = animalTextField.text else { return }
        
        if let oldPetName = petName {
            let editPetName = PetName(id: oldPetName.id, name: name, animal: animal)
            delegate?.didEditPetName(editPetName)
        }   else {
            let newPetName = PetName(id: UUID(), name: name, animal: animal)
            delegate?.didCreateNewPetName(newPetName)
            
        }
        
        
        
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
