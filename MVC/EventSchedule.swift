//
//  EventSchedule.swift
//  Dellywood
//
//  Created by Apple on 7/1/18.
//  Copyright © 2018 webcoir. All rights reserved.
//

import UIKit

class EventSchedule: Default,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var notify_lbl: UILabel!
    
    
    var VenueArr = [EventVenue]()
    var event_id = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getEventAuditionCities()
        
        notify_lbl.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VenueArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell") as! ScheduleCell
        let data = VenueArr[indexPath.row]
        cell.cell_name.text = (data.city?.name!)! + " - " + (data.state?.name!)!
        cell.cell_date.text = data.date
        cell.cell_time.text = data.formatted_time
        cell.cell_location.text = data.formatted_address
        
        cell.isSelected = false
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //self.performSegue(withIdentifier: "MovieReview", sender: self)
    }
    
    @IBAction func backAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    
    func getEventAuditionCities(){
        
        self.showSpinner(view: self.view)
        
        let parameters: Parameters = [
            "event_id": self.event_id,
            "app_version": App_Version,
            "device_unique_id": Device_id,
        ]
        
        EventCitiesServices.getEventAuditionVenues(parameters as NSDictionary) { (result) in
            //print(result)
            self.hideSpinner(view: self.view)
            
            self.VenueArr.removeAll()
            
            let status = result.value(forKey: "status") as! String
            if status == "success"{
                
                let arr = result.value(forKey: "event_venues") as! Array<Any>
                
                for i in 0 ..< arr.count {
                    self.VenueArr.append(arr[i] as! EventVenue)
                }
                
                
                //print(self.VenueArr)
                if self.VenueArr.count == 0{
                    self.notify_lbl.isHidden = false
                }else{
                    self.notify_lbl.isHidden = true
                    //self.page = 1
                    self.table.reloadData()
                }
                //self.performSegue(withIdentifier: "login", sender: self)
            }else if status == "failure" {
                
                let response = result.value(forKey: "message") as! String
                self.view.makeToast(response)
                
            }else{
                let response = result.value(forKey: "message") as! String
                self.view.makeToast(response)
            }
            
        }
        
    }

}
