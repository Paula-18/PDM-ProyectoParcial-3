//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var animales : [Animal] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvAnimales: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animales.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblNombre.text = animales[indexPath.row].nombre
        celda.lblDueno.text = "\("Dueño: ") \(animales[indexPath.row].dueno)"
        celda.lblAsunto.text = animales[indexPath.row].asunto
        celda.lblFecha.text = animales[indexPath.row].fecha

        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let animalSeleccionado = animales[tvAnimales.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.animal = animalSeleccionado
            destino.indice = tvAnimales.indexPathForSelectedRow!.row
            destino.callbackActualizarTVAnimales = actualizarTVAnimales
            destino.callbackEliminarAnimal = eliminarAnimal
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarAnimal = agregarAnimal
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de Pacientes"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animales.append(Animal(nombre: "Firulais", especie: "Perro", tamano: "Mediano", edad: "3 años", sexo: "Macho", dueno: "Maria Hernandez", asunto: "Limpieza", fecha: "20/11/21", celular: "64424242", correo: "maria@email.com"))
        animales.append(Animal(nombre: "Manchitas", especie: "Gato", tamano: "Pequeño", edad: "6 meses", sexo: "Hembra", dueno: "Sofia Ramirez", asunto: "Desparacitar", fecha: "16/11/21", celular: "64414141", correo: "sofia@email.com"))
        animales.append(Animal(nombre: "Cheems", especie: "Perro", tamano: "Pequeño", edad: "2 años", sexo: "Macho", dueno: "Juan Lopez", asunto: "Cortar Pelaje", fecha: "21/11/21", celular: "64212121", correo: "juan@email.com"))
        animales.append(Animal(nombre: "Plumitas", especie: "Perico", tamano: "Pequeño", edad: "1 año", sexo: "Hembra", dueno: "Jesus Zazueta", asunto: "Chequeo", fecha: "20/11/21", celular: "64494949", correo: "jesus@email.com"))
        animales.append(Animal(nombre: "Flopa", especie: "Gato", tamano: "Grande", edad: "2 años", sexo: "Macho", dueno: "Camila Valenzuela", asunto: "Esterilizacion", fecha: "21/11/21", celular: "64343434", correo: "camila@email.com"))
        animales.append(Animal(nombre: "Lola", especie: "Perro", tamano: "Grande", edad: "5 años", sexo: "Hembra", dueno: "Pedro Martinez", asunto: "Limpieza", fecha: "11/11/21", celular: "64787878", correo: "pedro@email.com"))
        animales.append(Animal(nombre: "Bola", especie: "Hamster", tamano: "Pequeño", edad: "3 meses", sexo: "Hembra", dueno: "Valentina Enriquez", asunto: "Chequeo", fecha: "22/11/21", celular: "64343434", correo: "valentina@email.com"))
        animales.append(Animal(nombre: "Walter", especie: "Perro", tamano: "Grande", edad: "3 años", sexo: "Macho", dueno: "Ramon Dominguez", asunto: "Cortar Pelaje", fecha: "16/11/21", celular: "64111111", correo: "ramon@email.com"))
        animales.append(Animal(nombre: "Bingus", especie: "Gato", tamano: "Mediano", edad: "1 año", sexo: "Macho", dueno: "Alondra Garcia", asunto: "Chequeo", fecha: "19/11/21", celular: "64484848", correo: "alondra@email.com"))
        animales.append(Animal(nombre: "Pelusa", especie: "Gato", tamano: "Pequeño", edad: "7 meses", sexo: "Hembra", dueno: "Ximena Cortez", asunto: "Esterilizacion", fecha: "18/11/21", celular: "64767676", correo: "ximena@email.com"))    }
    
    func actualizarTVAnimales() {
        tvAnimales.reloadData()
    }
    
    func eliminarAnimal(indice : Int) {
        animales.remove(at: indice)
        actualizarTVAnimales()
    }
    
    func agregarAnimal(animal: Animal) {
        animales.append(animal)
        actualizarTVAnimales()
    }
}

