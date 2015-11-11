//
//  ViewController.swift
//  FoodInWorld
//
//  Created by Diego Gomes on 10/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate {
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var menssage: UILabel!

    //atencao aqui nesse array,é aqui que teremos dois pickerview lado a lado,diferente do que eu pensei da primeira vez que teria dois pickerview lado a lado
    var data = [["USA","Italy","Gerrmany","Brazil","Japon","Chinese"],["Beijing","Hong Kong","Thailand","Ireland","London","France"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return  data.count
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        let item1 = data[0][pickerView.selectedRowInComponent(0)]
        let item2 = data[1][pickerView.selectedRowInComponent(1)]
        
        let usa = UIImage(named: "usa.jpg")
        let italy = UIImage(named: "italy.jpg")
        let germany = UIImage(named: "Germany.jpg")
        let brazil = UIImage(named: "brazil.jpg")
        let japon = UIImage(named: "japao.jpg")
        let chinese = UIImage(named: "chinese.jpg")
        
        
        //constantes do segundo array
        let beijing = UIImage(named: "beijing.jpg")
        let hongkong = UIImage(named: "honkong.jpg")
        let thailand = UIImage(named: "thailand.jpeg")
        let ireland = UIImage(named: "irland.jpg")
        let london = UIImage(named: "london.jpg")
        let france = UIImage(named: "france.jpg")
        
        
        switch(item1){
        
        
            case "USA":
                image1.image = usa //essa usa no final é a variavel criada a cima
                label1.text = "USA"
            
            
            case "Italy":
                image1.image = italy
                label1.text = "Italy"
            
            case "Gerrmany":
                image1.image = germany
                label1.text = "germany"
            
            case "Brazil":
                image1.image = brazil
                label1.text = "Brazil"
            
            case "Japon":
                image1.image = japon
                label1.text = "Japao"
            
            case "Chinese":
                image1.image = chinese
                label1.text = "chinese"
            
        default:
            image1.image = usa
            label1.text = "é o que tem"
            
        } //closed swicth(item1)
        
        
        switch(item2){
          //  "Beijing","Hong Kong","Tailand","Ireland","London","France"
        
        case "Beijing":
                image2.image = beijing
                label2.text = "Beijing"
        
        case "Hong Kong":
                image2.image = hongkong
                label2.text = "Hong kong"
            
        case "Thailand":
                image2.image = thailand
                label2.text = "Thailand"
        
        case "Ireland":
                image2.image = ireland
                label2.text = "Ireland"
         
        case "London":
                image2.image = london
                label2.text = "London"
            
        case "France":
                image2.image = france
                label2.text = "France"
        default:
            image2.image = london
            label2.text = "Foto default"
        }
    }
}

