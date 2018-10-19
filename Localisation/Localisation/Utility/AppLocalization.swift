//
//  AppLocalization.swift
//  Localisation
//
//  Created by Pankaj on 10/19/18.
//  Copyright © 2018 Pankaj Gondaliya. All rights reserved.
//

import Foundation

let EnglishBundlePath = Bundle.main.path(forResource: "en", ofType: "lproj")

class AppLocalization: NSObject {
    //MARK:- Singleton
    static let sharedInstance: AppLocalization = {AppLocalization()}()
    var Languagebundle = Bundle(path:EnglishBundlePath!)
    
    // It will translate the string as per the selected bundle of string.
    func getTranslationForKey(key: NSString)->NSString {
        // Get the translated string using the language bundle.
        let translatedString = self.Languagebundle?.localizedString(forKey: key as String, value:"", table: nil) ?? ""
        return translatedString as NSString
    }
    
    func changeLanugage() {
        var languageCode =  UserDefaults.standard.string(forKey: Keys.LANGUAGE_CODE)
        //On application launch, it will use English as default language
        if(languageCode == nil) {
            languageCode = LanguageCode._English
        }
        // Get language bundle that is relevant.
        let bundlePath = Bundle.main.path(forResource: languageCode as String?, ofType: "lproj")
        self.Languagebundle = Bundle(path: bundlePath!)
    }
}

//MARK:- extension
extension String {
    var localize:String {
        return AppLocalization.sharedInstance.getTranslationForKey(key: self as NSString) as String
    }
}
