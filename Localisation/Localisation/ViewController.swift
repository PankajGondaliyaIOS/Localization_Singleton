//
//  ViewController.swift
//  Localisation
//
//  Created by Neil Patel on 10/19/18.
//  Copyright © 2018 Pankaj Gondaliya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLocalisation()
    }
    
    //Localisation
    func setLocalisation() {
        lblTitle.text = "Intro".localize
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Action Methods
    @IBAction func setGlobalLanguageToEnglish() {
        UserDefaults.standard.set(LanguageCode._English, forKey: Keys.LANGUAGE_CODE)
        UserDefaults.standard.synchronize()
        AppLocalization.sharedInstance.changeLanugage()
        setLocalisation()
    }
    
    @IBAction func setGlobalLanguageToFrench() {
        UserDefaults.standard.set(LanguageCode._French, forKey: Keys.LANGUAGE_CODE)
        UserDefaults.standard.synchronize()
        AppLocalization.sharedInstance.changeLanugage()
        setLocalisation()
    }
    
    @IBAction func setGlobalLanguageToArabic() {
        UserDefaults.standard.set(LanguageCode._Arabic, forKey: Keys.LANGUAGE_CODE)
        UserDefaults.standard.synchronize()
        AppLocalization.sharedInstance.changeLanugage()
        setLocalisation()
    }
    
}

