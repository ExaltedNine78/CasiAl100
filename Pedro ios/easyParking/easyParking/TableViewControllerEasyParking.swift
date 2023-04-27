//
//  TableViewControllerEasyParking.swift
//  easyParking
//
//  Created by Facultad de Contaduría y Administración on 19/04/23.
//

import UIKit


struct EstructuraEasyParking{
    var Foto:UIImage
    var Placas:String
    var Color: String
    var Modelo: String
    var Nombre: String
    
    
    
}


    var EasyParking:[EstructuraEasyParking]=[
    
        EstructuraEasyParking (Foto: UIImage(named:"bmwblanco")!, Placas: "6106 HXY", Color: "Blanco", Modelo: "2021", Nombre: "Pedro"),
        EstructuraEasyParking (Foto: UIImage(named:"chevy2012")!, Placas: "255 YAG", Color: "Plata", Modelo: "2012", Nombre: "Catherine"),
    ]
    
class TableViewControllerEasyParking: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var TVEasyParking: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        TVEasyParking.dataSource=self
        TVEasyParking.delegate=self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EasyParking.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celdita", for: indexPath) as! TableViewCellEasyParking
        
        let celdaReciclada = EasyParking[indexPath.row]
        
        cell.imgauto.image = celdaReciclada.Foto
        cell.lbcolor.text = celdaReciclada.Color
        cell.lbmodelo.text = celdaReciclada.Modelo
        cell.lbplacas.text = celdaReciclada.Placas
        cell.lbnombre.text = celdaReciclada.Nombre
        
        
        // Configure the cell...
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    
    override func viewDidAppear(_ _animated:Bool) {
        TVEasyParking.reloadData()
    }
    
}

