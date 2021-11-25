//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Animal{
    var nombre : String
    var especie : String
    var tamano : String
    var edad : String
    var sexo : String
    var dueno : String
    var asunto : String
    var fecha : String
    var celular: String
    var correo : String

    init(nombre: String, especie: String, tamano: String, edad: String, sexo: String, dueno: String, asunto: String, fecha: String, celular: String, correo: String){
        self.nombre = nombre
        self.especie = especie
        self.tamano = tamano
        self.edad = edad
        self.sexo = sexo
        self.dueno = dueno
        self.asunto = asunto
        self.fecha = fecha
        self.celular = celular
        self.correo = correo
    }
}
