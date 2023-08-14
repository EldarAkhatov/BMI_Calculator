//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Эльдар Ахатов on 05/08/23.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func heightSliderAction(_ sender: UISlider) {
       let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
        
    }
    
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultBMI = calculatorBrain.resultBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

