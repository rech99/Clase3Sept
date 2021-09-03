//
//  ViewController.swift
//  clase3sept
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var lblForm: UILabel!
    
    @IBOutlet weak var lblTempAct: UILabel!
    
    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var lblAuth: UILabel!
    
    @IBOutlet weak var capt: UIButton!
    @IBOutlet weak var enviar: UIButton!
    
    @IBOutlet weak var sldTemp: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Img.isHidden = true
        lblAuth.isHidden = true
        capt.isHidden = true
        enviar.isEnabled = true
        sldTemp.isEnabled = true
        
    }

    @IBAction func Slider(_ sender: Any) {
        lblTempAct.text = "\(String(format: "%.1f", sldTemp.value))C"
        if sldTemp.value >= 38.0{
            lblTempAct.textColor = UIColor.red
        } else{
            lblTempAct.textColor = UIColor.black
        }
    }
    
    
    @IBAction func btnAceptar(_ sender: Any) {
        if sldTemp.value >= 38.0{
            Img.image = UIImage(named: "cruz")
            lblAuth.text = "Ingreso NO Autorizado para \(txtNombre.text!)"
        } else {
            Img.image = UIImage (named: "palomita")
            lblAuth.text = "Ingreso autorizado para \(txtNombre.text!)"
        }
        
        Img.isHidden = false
        lblAuth.isHidden = false
        capt.isHidden = false
        enviar.isEnabled = false
        sldTemp.isEnabled = false
        sldTemp.tintColor = UIColor.darkGray
        enviar.isEnabled = true

        
    }
    
    
    
    
    
    @IBAction func btnCapt(_ sender: Any) {
        
        
        
        Img.isHidden = true
        lblAuth.isHidden = true
        capt.isHidden = true
        enviar.isEnabled = true
        sldTemp.isEnabled = true
        txtNombre.text = ""
        sldTemp.tintColor = UIColor.systemBlue
        
    }
    

}

