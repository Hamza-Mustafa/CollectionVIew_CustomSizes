//
//  ViewController.swift
//  CollectionVIew_CustomSizes
//
//  Created by Apple on 12/24/19.
//  Copyright © 2019 HamzaMustafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
    var arrLabel = ["Tandoori Chicken","Pan Cake","Nuggets","Burger","Channa Chaat","Papri","Veges1","Veges2"]
    var arrImg = [#imageLiteral(resourceName: "tandoori"),#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "Crab-Cake-200x200"),#imageLiteral(resourceName: "Curso-de-Hambúrguer"),#imageLiteral(resourceName: "foodwellness-200x200"),#imageLiteral(resourceName: "Nachos-2-200x200"),#imageLiteral(resourceName: "courtesy-of-addict-food-and-coffee-200x200"),#imageLiteral(resourceName: "insert-SummerWEdnesdaysFood-200x200")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrLabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        
        cell.clabel.text = arrLabel[indexPath.row]
        cell.cimg.image = arrImg[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailVc = self.storyboard?.instantiateViewController(withIdentifier: "detailVc_id") as! DetailPage_ViewController
        
        detailVc.mainImage = arrImg[indexPath.row]
        detailVc.mainLabel = arrLabel[indexPath.row]
        
        self.navigationController?.pushViewController(detailVc, animated: true)
    }
    

   
    
    


}

