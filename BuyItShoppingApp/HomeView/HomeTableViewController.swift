//
//  HomeTableView.swift
//  BuyItShoppingApp
//
//  Created by Vikas Nayak on 26/03/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

import UIKit


class HomeTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var imageList=["Desktop","Laptop","Mobile","Camera"]
    var VCNames = [String]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    VCNames = ["DesktopVC","LaptopVC","MobileVC","CameraVC"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
     func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageList.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeTableViewCell
        
        cell.homeImage.image = UIImage(named: imageList[indexPath.row])
        
        return cell
    }

    

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
    
        let name = VCNames[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: name)
        self.navigationController?.pushViewController(viewController!, animated: true)
        
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 125
        
    }
    
    
    @IBAction func BtnMenu(_ sender: Any)
    {
        
    }
    
    
    @IBAction func btnSearch(_ sender: Any)
    {
        
    }
    
    @IBAction func btnCart(_ sender: Any)
    {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
    }
    
    


}