//
//  ViewController.swift
//  Date_time
//
//  Created by COE-02 on 04/09/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    var CountryList = [CountryClass]()
    var StateList = [StateClass]()
    var CityList = [CityClass]()
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if component == 0
        {
            return CountryList.count
        }
            
        else if component == 1 {
            return selectedStates.count
        }
            
        else if component == 2 {
            return selectedCity.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return CountryList[row].CountryName
        }
        else if component == 1{
            return selectedStates[row].StateName
        }
        else if component == 2{
            return selectedCity[row].CityName
        }
        return ""
    }
    
    var selectedStates = [StateClass]()
    
    var selectedCity = [CityClass]()
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            
            selectedStates = StateList.filter({ (stateObj) -> Bool in if stateObj.RefCountryId == CountryList[row].CountryId{
                return true
                }
                return false
            })
            pickerView.reloadComponent(1)
        }
        else if component == 1{
            selectedCity = CityList.filter({ (cityObj) -> Bool in if cityObj.RefStateId == selectedStates[row].StateId{
                return true
                }
                return false
            })
            pickerView.reloadComponent(2)
        }
    }
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var country = CountryClass()
        country.CountryId = 1
        country.CountryName = "INDIA"
        CountryList.append(country)

        country.CountryId = 2
        country.CountryName = "USA"
        CountryList.append(country)
        
        country.CountryId = 3
        country.CountryName = "CHINA"
        CountryList.append(country)

        var state = StateClass()
        state.RefCountryId = 1
        state.StateId = 1
        state.StateName = "Gujarat"
        StateList.append(state)
     
        
        state.RefCountryId = 2
        state.StateId = 2
        state.StateName = "SAN FRANCISCO"
        StateList.append(state)
        
        
      
        state.RefCountryId = 3
        state.StateId = 3
        state.StateName = "HONG KONG"
        StateList.append(state)
        
        var city = CityClass()
        city.RefStateId = 1
        city.CityId = 1
         city.CityName = "AHMEDABAD"
        CityList.append(city)
        
        
        city.RefStateId = 2
        city.CityId = 2
        city.CityName = "GOLDEN GATE"
        CityList.append(city)
        
        
        city.RefStateId = 3
        city.CityId = 3
        city.CityName = "TOWER"
        CityList.append(city)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

