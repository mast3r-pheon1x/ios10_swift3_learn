//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by APC6590 on 9/18/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "8e12e9fa570b47b3d042142a208cc3be"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"
