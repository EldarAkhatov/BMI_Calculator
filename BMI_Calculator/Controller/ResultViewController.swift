//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by Эльдар Ахатов on 12/08/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var resultBMI: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
        resultLabel.text = resultBMI
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    func showAdvise() {
        adviceLabel.text = advice
    }

    func showResult() {
        resultLabel.text = resultBMI
    }
    
    func setColor() {
        view.backgroundColor = color
    }
    
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
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
