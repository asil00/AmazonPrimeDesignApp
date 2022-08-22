//
//  ViewController.swift
//  AmazonPrimeUI
//
//  Created by Asilcan Çetinkaya on 22.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var film1CollectionView: UICollectionView!
    
    @IBOutlet weak var film2CollectionView: UICollectionView!
    
   
    var film1Listesi  = [Film]()
    var film2Listesi = [Film]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let film1 = Film(filmId: 1, filmImage: "mrrobot-2")
        let film2 = Film(filmId: 2, filmImage: "theBoys")
        let film3 = Film(filmId: 3, filmImage: "theMagicians")
        
        let film4 = Film(filmId: 4, filmImage: "thePurger")
        let film5 = Film(filmId: 5, filmImage: "thirteenLives")
        let film6 = Film(filmId: 6, filmImage: "AllOrNothing")
        
        film1CollectionView.delegate = self
        film1CollectionView.dataSource = self
        
        film2CollectionView.delegate = self
        film2CollectionView.dataSource = self
        
        film1Listesi.append(film1)
        film1Listesi.append(film2)
        film1Listesi.append(film3)
        
        film2Listesi.append(film4)
        film2Listesi.append(film5)
        film2Listesi.append(film6)
        
    }

}
extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
            
        case film1CollectionView :
            return film1Listesi.count
        case film2CollectionView :
            return film2Listesi.count
        default : return 0
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case film1CollectionView :
            let film = film1Listesi[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "film1Hucre", for: indexPath) as! film1CollectionViewCell
            cell.film1ImageView.image = UIImage(named:film.filmImage!)
            return cell
        case film2CollectionView :
            let film = film2Listesi[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "film2Hucre", for: indexPath) as! film2CollectionViewCell
            cell.film2Image.image = UIImage(named:film.filmImage!)
            return cell
        default : return UICollectionViewCell()
        }
    }
    
}
