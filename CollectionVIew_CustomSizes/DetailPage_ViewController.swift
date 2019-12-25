//
//  DetailPage_ViewController.swift
//  CollectionVIew_CustomSizes
//
//  Created by Apple on 12/25/19.
//  Copyright © 2019 HamzaMustafa. All rights reserved.
//

import UIKit

class DetailPage_ViewController: UIViewController {
  
    @IBOutlet weak var dimage: UIImageView!
    @IBOutlet weak var dlabel: UILabel!
    
    var mainImage : UIImage!
    var mainLabel : String!
    
    override func viewDidLoad() {
          super.viewDidLoad()
        dimage.image = mainImage
        dlabel.text = mainLabel
      }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
