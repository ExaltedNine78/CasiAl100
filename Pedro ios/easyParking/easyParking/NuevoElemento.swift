//
//  NuevoElemento.swift
//  easyParking
//
//  Created by Facultad de Contaduría y Administración on 25/04/23.
//

import UIKit

class NuevoElemento: UIViewController {

    
    @IBOutlet weak var txtNombre: UITextField!
    
    
    @IBOutlet weak var txtModelo: UITextField!
    
    @IBOutlet weak var txtColor: UITextField!
    
   
    @IBOutlet weak var txtPlacas: UITextField!
    
    
    var nuevoEasyParking:EstructuraEasyParking = EstructuraEasyParking(Foto: UIImage(named:"centenario")!, Placas: "", Color: "", Modelo: "", Nombre: "")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func Guardar(_ sender: Any) {
        
        
        nuevoEasyParking.Nombre = txtNombre.text!
        nuevoEasyParking.Modelo = txtModelo.text!
        nuevoEasyParking.Color = txtColor.text!
        nuevoEasyParking.Placas = txtPlacas.text!
        
        EasyParking.append(nuevoEasyParking)
        
        
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
