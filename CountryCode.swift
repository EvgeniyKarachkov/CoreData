//
//  CountryCode.swift
//  CoreDataProject
//
//  Created by Admin on 25.09.2021.
//

import Foundation

struct CountryCode {
    static let all = [ "Afghanistan" : "af",
                 "Albania" : "al",
                 "Algeria" : "dz",
                 "American Samoa" : "as",
                 "Andorra": "ad",
                 "Angola" : "ao",
                 "Anguilla" : "ai",
                 "Antarctica" : "aq",
                 "Antigua and Barbuda" : "ag",
                 "Argentina" : "ar",
                 "Armenia" : "am",
                 "Aruba" : "aw",
                 "Australia" : "au",
                 "Austria" : "at",
                 "Azerbaijan" : "az",
                 "Bahamas" : "bs",
                 "Bahrain" : "bh",
                 "Bangladesh" : "bd",
                 "Barbados" : "bb",
                 "Belarus" : "by",
                 "Belgium" : "be",
                 "Belize" : "bz",
                 "Benin" : "bj",
                 "Bermuda" : "bm",
                 "Bhutan" : "bt",
                 "Bolivia" : "bo",
                 "Bosnia and Herzegovina" : "ba",
                 "Botswana" : "bw",
                 "Bouvet Island" : "bv",
                 "Brazil" : "br",
                 "British Indian Ocean Territory" : "io",
                 "Brunei" : "bn",
                 "Bulgaria" : "bg",
                 "Burkina Faso" : "bf",
                 "Burundi" : "bi",
                 "Cambodia" : "kh",
                 "Cameroon" : "cm",
                 "Canada" : "ca",
                 "Cape Verde" : "cv",
                 "Cayman Islands" : "ky",
                 "Central African Republic" : "cf",
                 "Chad" : "td",
                 "Chile" : "cl",
                 "China" : "ch",
                 "Christmas Island" : "cx",
                 "Cocos (Keeling) Islands" : "cc",
                 "Colombia" : "co",
                 "Comoros" : "km",
                 "Congo" : "cg",
                 "Cook Islands" : "ck",
                 "Costa Rica" : "cr",
                 "Croatia" : "hr",
                 "Cuba" : "hr",
                 "Cyprus" : "cy",
                 "Czech Republic" : "cz",
                 "Denmark" : "dk",
                 "Djibouti" : "dj",
                 "Dominica" : "dm",
                 "Dominican Republic" : "do",
                 "East Timor" : "tp",
                 "Ecuador" : "ec",
                 "El Salvador" : "sv",
                 "Egypt" : "eg",
                 "Equatorial Guinea" : "gq",
                 "Eritrea" : "er",
                 "Estonia" : "ee",
                 "Ethiopia" : "et",
                 "Falkland Islands" : "fk",
                 "Faroe Islands" : "fo",
                 "Fiji Islands" : "fj",
                 "Finland" : "fi",
                 "France" : "fr",
                 "French Guiana" : "fg",
                 "French Polynesia" : "pf",
                 "French Southern territories" : "tf",
                 "Gabon" : "ba",
                 "Gambia" : "gm",
                 "Georgia" : "ge",
                 "Germany" : "de",
                 "Ghana" : "gh",
                 "Gibraltar" : "gi",
                 "Greece" : "gr",
                 "Greenland" : "gl",
                 "Grenada" : "gd",
                 "Guadeloupe" : "gp",
                 "Guam" : "gu",
                 "Guatemala" : "gt",
                 "Guernsey" : "gg",
                 "Guinea" : "gn",
                 "Guinea-Bissau" : "gw",
                 "Guyana" : "gy",
                 "Haiti" : "ht",
                 "Heard Island and McDonald Islands" : "hm",
                 "Holy See (Vatican City State)" : "va",
                 "Honduras" : "hn",
                 "Hong Kong" : "hk",
                 "Hungary" : "hu",
                 "Iceland" : "is",
                 "India" : "in",
                 "Indonesia" : "id",
                 "Iran" : "ir",
                 "Iraq" : "iq",
                 "Ireland" : "ie",
                 "Isle of Man" : "im",
                 "Israel" : "il",
                 "Italy" : "it",
                 "Ivory Coast" : "ci",
                 "Jamaica" : "jm",
                 "Japan" : "jp",
                 "Jersey" : "je",
                 "Jordan" : "jo",
                 "Kazakhstan" : "kz",
                 "Kenya" : "ke",
                 "Kiribati" : "ki",
                 "Kuwait" : "kw",
                 "Kyrgyzstan" : "kg",
                 "Laos" : "la",
                 "Latvia" : "lv",
                 "Lebanon" : "lb",
                 "Lesotho" : "ls",
                 "Liberia" : "lr",
                 "Libyan Arab Jamahiriya" : "ly",
                 "Liechtenstein" : "li",
                 "Lithuania" : "lt",
                 "Luxembourg" : "lu",
                 "Macao" : "mo",
                 "North Macedonia" : "mk",
                 "Madagascar" : "mg",
                 "Malawi" : "mw",
                 "Malaysia" : "my",
                 "Maldives" : "mv",
                 "Mali" : "ml",
                 "Malta" : "mt",
                 "Marshall Islands" : "mh",
                 "Martinique" : "mq",
                 "Mauritania" : "mr",
                 "Mauritius" : "mu",
                 "Mayotte" : "yt",
                 "Mexico" : "mx",
                 "Micronesia, Federated States of" : "fm",
                 "Moldova" : "md",
                 "Monaco" : "mc",
                 "Mongolia" : "mn",
                 "Montenegro" : "me",
                 "Montserrat" : "ms",
                 "Morocco" : "ma",
                 "Mozambique" : "mz",
                 "Myanmar" : "mm",
                 "Namibia" : "na",
                 "Nauru" : "nr",
                 "Nepal" : "np",
                 "Netherlands" : "nl",
                 "Netherlands Antilles" : "an",
                 "New Caledonia" : "nc",
                 "New Zealand" : "nz",
                 "Nicaragua" : "ni",
                 "Niger" : "ne",
                 "Nigeria" : "ng",
                 "Niue" : "nu",
                 "Norfolk Island" : "nf",
                 "North Korea" : "kp",
                 "Northern Ireland" : "gb",
                 "Northern Mariana Islands" : "mp",
                 "Norway" : "no",
                 "Oman" : "om",
                 "Pakistan" : "pk",
                 "Palau" : "pw",
                 "Palestine" : "ps",
                 "Panama" : "pa",
                 "Papua New Guinea" : "pg",
                 "Paraguay" : "py",
                 "Peru" : "pe",
                 "Philippines" : "ph",
                 "Pitcairn" : "pn",
                 "Poland" : "pl",
                 "Portugal" : "pt",
                 "Puerto Rico" : "pr",
                 "Qatar" : "qa",
                 "Reunion" : "re",
                 "Romania" : "ro",
                 "Russia" : "ru",
                 "Rwanda" : "rw",
                 "Saint Helena" : "sh",
                 "Saint Kitts and Nevis" : "kn",
                 "Saint Lucia" : "ls",
                 "Saint Pierre and Miquelon" : "pm",
                 "Saint Vincent and the Grenadines" : "vc",
                 "Samoa" : "ws",
                 "San Marino" : "sm",
                 "Sao Tome and Principe" : "st",
                 "Saudi Arabia" : "sa",
                 "Senegal" : "sn",
                 "Serbia" : "rs",
                 "Seychelles" : "sc",
                 "Sierra Leone" : "sl",
                 "Singapore" : "sg",
                 "Slovakia" : "sk",
                 "Slovenia" : "si",
                 "Solomon Islands" : "sb",
                 "Somalia" : "so",
                 "South Africa" : "za",
                 "South Georgia and the South Sandwich Islands" : "gs",
                 "South Korea" : "kr",
                 "South Sudan" : "ss",
                 "Spain" : "es",
                 "Sri Lanka" : "lk",
                 "Sudan" : "sd",
                 "Suriname" : "sr",
                 "Svalbard and Jan Mayen" : "sj",
                 "Swaziland" : "sz",
                 "Sweden" : "se",
                 "Switzerland" : "ch",
                 "Syria" : "sy",
                 "Tajikistan" : "tj",
                 "Tanzania" : "tz",
                 "Thailand" : "th",
                 "The Democratic Republic of Congo" : "cd",
                 "Timor-Leste" : "tl",
                 "Togo" : "tg",
                 "Tokelau" : "tk",
                 "Tonga" : "to",
                 "Trinidad and Tobago" : "tt",
                 "Tunisia" : "tn",
                 "Turkey" : "tr",
                 "Turkmenistan" : "tm",
                 "Turks and Caicos Islands" : "tc",
                 "Tuvalu" : "tv",
                 "Uganda" : "ug",
                 "Ukraine" : "ua",
                 "United Arab Emirates" : "ae",
                 "United Kingdom" : "uk",
                 "USA" : "us",
                 "United States Minor Outlying Islands" : "um",
                 "Uruguay" : "uy",
                 "Uzbekistan" : "uz",
                 "Vanuatu" : "vu",
                 "Venezuela" : "ve",
                 "Vietnam"  : "vn",
                 "Virgin Islands, British" : "vg",
                 "Virgin Islands, U.S." : "vi",
                 "Wallis and Futuna" : "wf",
                 "Western Sahara" : "wh",
                 "Yemen" : "ye",
                 "Zambia" : "zm",
                 "Zimbabwe" : "zw"
                 
    ]
    
    static func getURLofImage(dict: [String: String], value searchKey: String) -> String? {
        var resultURL: String?
        
        for (key, value) in dict {
            if searchKey == key {
                resultURL = "https://www.countryflags.io/\(value)/shiny/64.png"
                break
            }
        }
        return resultURL
    }
}