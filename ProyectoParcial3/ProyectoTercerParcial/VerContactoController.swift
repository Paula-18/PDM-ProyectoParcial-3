//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var animal : Animal?
    var callbackActualizarTVAnimales : (() -> Void)?
    var callbackEliminarAnimal : ((Int) -> Void)?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblEspecie: UILabel!
    @IBOutlet weak var lblTamano: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblSexo: UILabel!
    @IBOutlet weak var lblDueno: UILabel!
    @IBOutlet weak var lblAsunto: UILabel!
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblCelular: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
    
    @IBOutlet weak var lblEditarNombre: UILabel!
    @IBOutlet weak var lblEditarEspecie: UILabel!
    @IBOutlet weak var lblEditarTamano: UILabel!
    @IBOutlet weak var lblEditarEdad: UILabel!
    @IBOutlet weak var lblEditarSexo: UILabel!
    @IBOutlet weak var lblEditarDueno: UILabel!
    @IBOutlet weak var lblEditarAsunto: UILabel!
    @IBOutlet weak var lblEditarFecha: UILabel!
    @IBOutlet weak var lblEditarCelular: UILabel!
    @IBOutlet weak var lblEditarCorreo: UILabel!
    
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
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Animal"
        
        lblNombre.text = animal!.nombre
        lblEspecie.text = animal!.especie
        lblTamano.text = "\("Tamaño: ") \(animal!.tamano)"
        lblEdad.text = "\("Edad: ") \(animal!.edad)"
        lblSexo.text = animal!.sexo
        lblDueno.text = "\("Dueño: ") \(animal!.dueno)"
        lblAsunto.text = animal!.asunto
        lblFecha.text = animal!.fecha
        lblCelular.text = animal!.celular
        lblCorreo.text = animal!.correo
        
        txtNombre.text = animal!.nombre
        txtEspecie.text = animal!.especie
        txtTamano.text = animal!.tamano
        txtEdad.text = animal!.edad
        txtSexo.text = animal!.sexo
        txtDueno.text = animal!.dueno
        txtAsunto.text = animal!.asunto
        txtFecha.text = animal!.fecha
        txtCelular.text = animal!.celular
        txtCorreo.text = animal!.correo
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarAnimal!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Animal"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblNombre.isHidden = true
        lblEspecie.isHidden = true
        lblTamano.isHidden = true
        lblEdad.isHidden = true
        lblSexo.isHidden = true
        lblDueno.isHidden = true
        lblAsunto.isHidden = true
        lblFecha.isHidden = true
        lblCelular.isHidden = true
        lblCorreo.isHidden = true
        
        lblEditarNombre.isHidden = false
        lblEditarEspecie.isHidden = false
        lblEditarTamano.isHidden = false
        lblEditarEdad.isHidden = false
        lblEditarSexo.isHidden = false
        lblEditarDueno.isHidden = false
        lblEditarAsunto.isHidden = false
        lblEditarFecha.isHidden = false
        lblEditarCelular.isHidden = false
        lblEditarCorreo.isHidden = false
        
        txtNombre.isEnabled = true
        txtNombre.isHidden = false
        txtEspecie.isEnabled = true
        txtEspecie.isHidden = false
        txtTamano.isEnabled = true
        txtTamano.isHidden = false
        txtEdad.isEnabled = true
        txtEdad.isHidden = false
        txtSexo.isEnabled = true
        txtSexo.isHidden = false
        txtDueno.isEnabled = true
        txtDueno.isHidden = false
        txtAsunto.isEnabled = true
        txtAsunto.isHidden = false
        txtFecha.isEnabled = true
        txtFecha.isHidden = false
        txtCelular.isEnabled = true
        txtCelular.isHidden = false
        txtCorreo.isEnabled = true
        txtCorreo.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Animal"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblNombre.isHidden = false
        lblEspecie.isHidden = false
        lblTamano.isHidden = false
        lblEdad.isHidden = false
        lblSexo.isHidden = false
        lblDueno.isHidden = false
        lblAsunto.isHidden = false
        lblFecha.isHidden = false
        lblCelular.isHidden = false
        lblCorreo.isHidden = false
        
        lblEditarNombre.isHidden = true
        lblEditarEspecie.isHidden = true
        lblEditarTamano.isHidden = true
        lblEditarEdad.isHidden = true
        lblEditarSexo.isHidden = true
        lblEditarDueno.isHidden = true
        lblEditarAsunto.isHidden = true
        lblEditarFecha.isHidden = true
        lblEditarCelular.isHidden = true
        lblEditarCorreo.isHidden = true
        
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtEspecie.isEnabled = false
        txtEspecie.isHidden = true
        txtTamano.isEnabled = false
        txtTamano.isHidden = true
        txtEdad.isEnabled = false
        txtEdad.isHidden = true
        txtSexo.isEnabled = false
        txtSexo.isHidden = true
        txtDueno.isEnabled = false
        txtDueno.isHidden = true
        txtAsunto.isEnabled = false
        txtAsunto.isHidden = true
        txtFecha.isEnabled = false
        txtFecha.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        
        animal!.nombre = txtNombre.text!
        animal!.especie = txtEspecie.text!
        animal!.tamano = txtTamano.text!
        animal!.edad = txtEdad.text!
        animal!.sexo = txtSexo.text!
        animal!.dueno = txtDueno.text!
        animal!.asunto = txtAsunto.text!
        animal!.fecha = txtFecha.text!
        animal!.celular = txtCelular.text!
        animal!.correo = txtCorreo.text!
        
        lblNombre.text = txtNombre.text!
        lblEspecie.text = txtEspecie.text!
        lblTamano.text = txtTamano.text!
        lblEdad.text = txtEdad.text!
        lblSexo.text = txtSexo.text!
        lblDueno.text = txtDueno.text!
        lblAsunto.text = txtAsunto.text!
        lblFecha.text = txtFecha.text!
        lblCelular.text = txtCelular.text!
        lblCorreo.text = txtCorreo.text!
        
        callbackActualizarTVAnimales!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Animal"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblNombre.isHidden = false
        lblEspecie.isHidden = false
        lblTamano.isHidden = false
        lblEdad.isHidden = false
        lblSexo.isHidden = false
        lblDueno.isHidden = false
        lblAsunto.isHidden = false
        lblFecha.isHidden = false
        lblCelular.isHidden = false
        lblCorreo.isHidden = false
        
        lblEditarNombre.isHidden = true
        lblEditarEspecie.isHidden = true
        lblEditarTamano.isHidden = true
        lblEditarEdad.isHidden = true
        lblEditarSexo.isHidden = true
        lblEditarDueno.isHidden = true
        lblEditarAsunto.isHidden = true
        lblEditarFecha.isHidden = true
        lblEditarCelular.isHidden = true
        lblEditarCorreo.isHidden = true
        
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtEspecie.isEnabled = false
        txtEspecie.isHidden = true
        txtTamano.isEnabled = false
        txtTamano.isHidden = true
        txtEdad.isEnabled = false
        txtEdad.isHidden = true
        txtSexo.isEnabled = false
        txtSexo.isHidden = true
        txtDueno.isEnabled = false
        txtDueno.isHidden = true
        txtAsunto.isEnabled = false
        txtAsunto.isHidden = true
        txtFecha.isEnabled = false
        txtFecha.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        
        txtNombre.text = animal!.nombre
        txtEspecie.text = animal!.especie
        txtTamano.text = animal!.tamano
        txtEdad.text = animal!.edad
        txtSexo.text = animal!.sexo
        txtDueno.text = animal!.dueno
        txtAsunto.text = animal!.asunto
        txtFecha.text = animal!.fecha
        txtCelular.text = animal!.celular
        txtCorreo.text = animal!.correo
    }
    
    
}
