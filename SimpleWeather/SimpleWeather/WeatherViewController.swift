//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 황은지 on 2022/05/26.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        cityLable.text = cities.randomElement()
        
        let imageName =  weathers.randomElement()!
        
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLable.text = "\(randomTemp)°"
        
        print("도시, 온도, 날씨, 이미지 변경하자!")
    }
}
