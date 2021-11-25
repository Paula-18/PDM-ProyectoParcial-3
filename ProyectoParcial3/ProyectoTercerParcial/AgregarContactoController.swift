//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtEspecie: UITextField!
    @IBOutlet weak var txtTamano: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtDueno: UITextField!
    @IBOutlet weak var txtAsunto: UITextField!
    @IBOutlet weak var txtFecha: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    
    
    var callBackAgregarAnimal : ((Animal) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar Animal"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let especie = txtEspecie.text!
        let tamano = txtTamano.text!
        let edad = txtEdad.text!
        let sexo = txtSexo.text!
        let dueno = txtDueno.text!
        let asunto = txtAsunto.text!
        let fecha = txtFecha.text!
        let celular = txtCelular.text!
        let correo = txtCorreo.text!
        
        let animal = Animal(nombre: nombre, especie: especie, tamano: tamano, edad: edad, sexo: sexo, dueno: dueno, asunto: asunto, fecha: fecha, celular: celular, correo: correo)
        
        callBackAgregarAnimal!(animal)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
