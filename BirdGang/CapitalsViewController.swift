//
//  ViewController.swift
//  Capitals
//
//  Created by Katherine Squires on 12/9/18.
//  Copyright © 2018 Katherine Squires. All rights reserved.
//

import UIKit

class CapitalsViewController: UIViewController {

    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBAction func nextCountry(_ sender: UIButton) {
        capitalLabel.text = Capitals[countryLabel.text!]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    countryLabel.text = "Swipe to Start"
    capitalLabel.text = ""
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
    }
    
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
    if (sender.direction == .left) {
        let Countries = Array(Capitals.keys)
        countryLabel.text = Countries.randomElement()
        capitalLabel.text = ""
    }
    if (sender.direction == .right) {
        
    }
}
    let Capitals = ["Afghanistan" : "Kabul",
                    "Albania" : "Tirana",
                    "Algeria" : "Algiers",
                    "Andorra" : "Andorra la Vella",
                    "Angola" : "Luanda",
                    "Antigua and Barbuda" : "St. John's",
                    "Argentina" : "Buenos Aires",
                    "Armenia" : "Yerevan",
                    "Australia" : "Canberra",
                    "Austria" : "Vienna",
                    "Azerbaijan" : "Baku",
                    "Bahamas" : "Nassau",
                    "Bahrain" : "Manama",
                    "Bangladesh" : "Dhaka",
                    "Barbados" : "Bridgetown",
                    "Belarus" : "Minsk",
                    "Belgium" : "Brussels",
                    "Belize" : "Belmopan",
                    "Benin" : "Porto-Novo",
                    "Bhutan" : "Thimphu",
                    "Bolivia" : "Sucre",
                    "Bosnia and Herzegovina" : "Sarajevo",
                    "Botswana" : "Gaborone",
                    "Brazil" : "Brasília",
                    "Brunei" : "Bandar Seri Begawan",
                    "Bulgaria" : "Sofia",
                    "Burkina Faso" : "Ouagadougou",
                    "Burundi" : "Bujumbura",
                    "Cambodia" : "Phnom Penh",
                    "Cameroon" : "Yaoundé",
                    "Canada" : "Ottawa",
                    "Cape Verde" : "Praia",
                    "Central African Republic" : "Bangui",
                    "Chad" : "N'Djamena",
                    "Chile" : "Santiago",
                    "China" : "Beijing",
                    "Colombia" : "Bogotá",
                    "Comoros" : "Moroni",
                    "Costa Rica" : "San José",
                    "Croatia" : "Zagreb",
                    "Cuba" : "Havana",
                    "Cyprus" : "Nicosia",
                    "Czech Republic" : "Prague",
                    "Denmark" : "Copenhagen",
                    "Djibouti" : "Djibouti",
                    "Dominica" : "Roseau",
                    "Dominican Republic" : "Santo Domingo",
                    "East Timor" : "Dili",
                    "Ecuador" : "Quito",
                    "Egypt" : "Cairo",
                    "El Salvador" : "San Salvador",
                    "Equatorial Guinea" : "Malabo",
                    "Eritrea" : "Asmara",
                    "Estonia" : "Tallinn",
                    "Ethiopia" : "Addis Ababa",
                    "Fiji" : "Suva",
                    "Finland" : "Helsinki",
                    "France" : "Paris",
                    "French Guinea" : "Cayenne",
                    "Gabon" : "Libreville",
                    "Gambia" : "Banjul",
                    "Georgia" : "Tbilisi",
                    "Germany" : "Berlin",
                    "Ghana" : "Accra",
                    "Greece" : "Athens",
                    "Grenada" : "St. George's",
                    "Guatemala" : "Guatemala City",
                    "Guinea" : "Conakry",
                    "Guinea-Bissau" : "Bissau",
                    "Guyana" : "Georgetown",
                    "Haiti" : "Port-au-Prince",
                    "Honduras" : "Tegucigalpa",
                    "Hungary" : "Budapest",
                    "Iceland" : "Reykjavík",
                    "India" : "New Delhi",
                    "Indonesia" : "Jakarta",
                    "Iran" : "Tehran",
                    "Iraq" : "Baghdad",
                    "Ireland" : "Dublin",
                    "Israel" : "Jerusalem",
                    "Italy" : "Rome",
                    "Ivory Coast" : "Yamoussoukro",
                    "Jamaica" : "Kingston",
                    "Japan" : "Tokyo",
                    "Jordan" : "Amman",
                    "Kazakhstan" : "Astana",
                    "Kenya" : "Nairobi",
                    "Kiribati" : "Tarawa Atoll",
                    "Kosovo" : "Pristina",
                    "Kuwait" : "Kuwait City",
                    "Kyrgyzstan" : "Bishkek",
                    "Laos" : "Vientiane",
                    "Latvia" : "Riga",
                    "Lebanon" : "Beirut",
                    "Lesotho" : "Maseru",
                    "Liberia" : "Monrovia",
                    "Libya" : "Tripoli",
                    "Liechtenstein" : "Vaduz",
                    "Lithuania" : "Vilnius",
                    "Luxembourg" : "Luxembourg",
                    "Macedonia" : "Skopje",
                    "Madagascar" : "Antananarivo",
                    "Malawi" : "Lilongwe",
                    "Malaysia" : "Kuala Lumpur",
                    "Maldives" : "Malé",
                    "Mali" : "Bamako",
                    "Malta" : "Valletta",
                    "Marshall Islands" : "Majuro",
                    "Mauritania" : "Nouakchott",
                    "Mauritius" : "Port Louis",
                    "Mexico" : "Mexico City",
                    "Micronesia" : "Palikir",
                    "Moldova" : "Chişinău",
                    "Monaco" : "Monaco",
                    "Mongolia" : "Ulaanbaatar",
                    "Montenegro" : "Podgorica",
                    "Morocco" : "Rabat",
                    "Mozambique" : "Maputo",
                    "Myanmar" : "Naypyidaw",
                    "Namibia" : "Windhoek",
                    "Nauru" : "Yaren",
                    "Nepal" : "Kathmandu",
                    "Netherlands" : "Amsterdam",
                    "New Zealand" : "Wellington",
                    "Nicaragua" : "Managua",
                    "Niger" : "Niamey",
                    "Nigeria" : "Abuja",
                    "North Korea" : "Pyongyang",
                    "Norway" : "Oslo",
                    "Oman" : "Muscat",
                    "Pakistan" : "Islamabad",
                    "Palau" : "Ngerulmud",
                    "Panama" : "Panama City",
                    "Papua New Guinea" : "Port Moresby",
                    "Paraguay" : "Asunción",
                    "Peru" : "Lima",
                    "Philippines" : "Manila",
                    "Poland" : "Warsaw",
                    "Portugal" : "Lisbon",
                    "Qatar" : "Doha",
                    "Republic of Congo" : "Brazzaville",
                    "Romania" : "Bucharest",
                    "Russia" : "Moscow",
                    "Rwanda" : "Kigali",
                    "Saint Kitts and Nevis" : "Basseterre",
                    "Saint Lucia" : "Castries",
                    "Saint Vincent and the Grenadines" : "Kingstown",
                    "Samoa" : "Apia",
                    "San Marino" : "San Marino",
                    "Sao Tome and Principe" : "São Tomé",
                    "Saudi Arabia" : "Riyadh",
                    "Senegal" : "Dakar",
                    "Serbia" : "Belgrade",
                    "Seychelles" : "Victoria",
                    "Sierra Leone" : "Freetown",
                    "Singapore" : "Singapore",
                    "Slovakia" : "Bratislava",
                    "Slovenia" : "Ljubljana",
                    "Solomon Islands" : "Honiara",
                    "Somalia" : "Mogadishu",
                    "South Africa" : "Pretoria",
                    "South Korea" : "Seoul",
                    "South Sudan" : "Juba",
                    "Spain" : "Madrid",
                    "Sri Lanka" : "Sri Jayawardenepura Kotte",
                    "Sudan" : "Khartoum",
                    "Suriname" : "Paramaribo",
                    "Swaziland" : "Mbabane",
                    "Sweden" : "Stockholm",
                    "Switzerland" : "Bern",
                    "Syria" : "Damascus",
                    "Taiwan" : "Taipei",
                    "Tajikistan" : "Dushanbe",
                    "Tanzania" : "Dodoma",
                    "Thailand" : "Bangkok",
                    "Togo" : "Lomé",
                    "Tonga" : "Nukuʻalofa",
                    "Trinidad and Tobago" : "Port of Spain",
                    "Tunisia" : "Tunis",
                    "Turkey" : "Ankara",
                    "Turkmenistan" : "Ashgabat",
                    "Tuvalu" : "Funafuti",
                    "Uganda" : "Kampala",
                    "Ukraine" : "Kiev",
                    "United Arab Emirates" : "Abu Dhabi",
                    "United Kingdom" : "London",
                    "United States" : "Washington, D.C.",
                    "Uruguay" : "Montevideo",
                    "Uzbekistan" : "Tashkent",
                    "Vanuatu" : "Port Vila",
                    "Vatican City" : "Vatican City",
                    "Venezuela" : "Caracas",
                    "Vietnam" : "Hanoi",
                    "Yemen" : "Sana'a",
                    "Zambia" : "Lusaka",
                    "Zimbabwe" : "Harare"
                    ]
    
    

}

