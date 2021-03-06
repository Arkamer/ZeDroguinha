//
//  ViewController.swift
//  App teste
//
//  Created by Aluno on 12/04/18.
//  Copyright © 2018 Ailton Lessa. All rights reserved.
//

import UIKit

/*
 enum Droga {
    case maconha
    case alcool
    case LSD
    case quetamina
    case cocaina
    case cigarro
}
*/
let drogas = ["Maconha", "Alcool", "LSD", "Cocaína", "Cigarro", "Metanfetamina", "Crack"]
let logoImages = [UIImage(named: "Maconha"), UIImage(named: "Álcool"), UIImage(named: "lsd"), UIImage(named: "Cocaína"), UIImage(named: "Cigarro"), UIImage(named: "Metanfetamina"), UIImage(named: "Crack")]

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drogas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ItemCell: FormCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Item", for: indexPath) as! FormCollectionViewCell
        ItemCell.layer.cornerRadius = 50
        ItemCell.Menu.image = logoImages[indexPath.row]
        ItemCell.Título.text = drogas[indexPath.row]
        
        return ItemCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        PopUp.isHidden = false

        self.view.bringSubview(toFront: PopUp)
        
    }
    
    @IBOutlet weak var PopUp: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        PopUp.isHidden = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var SOS: UIButton!
    
    
}
