//
//  ViewController.swift
//  Mega Assignment
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    var jsonDataArray = [JSONData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
        photoCollectionView.dataSource = self
        photoCollectionView.delegate = self
        // Do any additional setup after loading the view.
        let nib = UINib.init(nibName: "JsonCollectionViewCell", bundle: nil)
        photoCollectionView.register(nib, forCellWithReuseIdentifier: "JsonCollectionViewCell")
        
    }
    func fetchData() {
        let url = URL(string: "https://picsum.photos/list")
        URLSession.shared.dataTask(with: url!) {
            (data, response, error) in
            do {
                if error == nil {
                    self.jsonDataArray = try JSONDecoder().decode([JSONData].self, from: data!)
                    DispatchQueue.main.async {
                        self.photoCollectionView.reloadData()
                    }
                }
            }
            catch {
                print("can't fetch data")
            }
        }.resume()
        
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return jsonDataArray.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "JsonCollectionViewCell", for: indexPath) as! JsonCollectionViewCell
    let imageUrl = "https://picsum.photos/200/300?image=\(indexPath.row)"
    guard  let imageOfUrl  =  URL(string: imageUrl) else {
        return cell
    }
    UIImage.loadFrom(url: imageOfUrl) {
        image in
        if let img = image {
        cell.getImage(image: img)
    }
    }
    cell.getAuthor(authorName: jsonDataArray[indexPath.row].author)
    return cell
}

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let picDetails :  ImageData =  storyBoard.instantiateViewController(withIdentifier: "ImageData") as! ImageData
        picDetails.openUrl = jsonDataArray[indexPath.row].author_url
        
        let imageurl = "https://picsum.photos/300/400?image=\(jsonDataArray[indexPath.row].id)"
        guard let url = URL(string: imageurl) else
        {
            return
        }
        UIImage.loadFrom(url: url) { image in
            if let image = image {
                picDetails.myImageView.image = image
            }
        }
        self.navigationController?.pushViewController(picDetails, animated: true)
        
    }
    }
   
extension UIImage {
    
    public static func loadFrom(url: URL, completion: @escaping (_ image: UIImage?) -> ()) {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    completion(UIImage(data: data))
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
    
}



