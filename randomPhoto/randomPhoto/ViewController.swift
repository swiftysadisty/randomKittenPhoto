//
//  ViewController.swift
//  randomPhoto
//
//  Created by Алексей Шишкарев on 11.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var imageVie: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showRandomPhoto()
    }
    
   
    
    private struct imageView {
        let image: String
    }
    
    private struct imageStepView {
        let image: UIImage
        init(image: UIImage) {
            self.image = image
        }
    }
    
    private let images: [imageView] = [imageView(image: "1"),
                               imageView(image: "2"),
                               imageView(image: "3"),
                               imageView(image: "4"),
                               imageView(image: "5"),
                               imageView(image: "6"),
                               imageView(image: "7"),
                               imageView(image: "8"),
                               imageView(image: "9"),
                               imageView(image: "10"),
                               ]
    
    private func conver(model: imageView) -> imageStepView {
        let imageStep = imageStepView(
            image: UIImage(named: model.image) ?? UIImage())
        return imageStep
    }
    
    private func show(photo step: imageStepView) {
        imageVie.image = step.image
    }
    
    private func showRandomPhoto() {
                // Генерируем случайный индекс из массива images
               let currentImageIndex = Int.random(in: 0..<images.count)
                print(currentImageIndex)
                // Получаем случайное изображение по выбранному индексу
                let randomImage = images[currentImageIndex]
                // Конвертируем изображение в формат UIImage
                let convertedImage = conver(model: randomImage)
                // Отображаем случайное изображение в imageView
                show(photo: convertedImage)
        }
    
    
    @IBAction func randomBtn(_ sender: Any) {
        showRandomPhoto()
    }
    
    
}

