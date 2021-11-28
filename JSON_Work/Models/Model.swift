//
//  Model.swift
//  JSON_Work
//
//  Created by nurake on 28.11.2021.
//
import UIKit

extension ViewController {
    func randomDogs() {
        guard let url = URL(string: link) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let dogs = try JSONDecoder().decode(Dogs.self, from: data)
                print(dogs)
                guard let stringURL = dogs.message else { return }
                guard let url = URL(string: stringURL) else { return }
                guard let imageData = try? Data(contentsOf: url) else { return }
                DispatchQueue.main.async {
                    self.StatusLabel.text = "Status: \(dogs.status)"
                    self.ImageView.image = UIImage(data: imageData)
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }

}
