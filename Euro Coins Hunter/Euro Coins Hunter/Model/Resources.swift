//
//  Resources.swift
//  Euro Coins Hunter
//
//  Created by Stanislav Cherkasov on 29.07.2018.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import Foundation

class Resources {
  
  // Flags
  public static let flagPicture = {
    ["AndorraF", "AustriaF", "BelgiumF", "CyprusF",  "EstoniaF", "FinlandF",
     "FranceF", "GermanyF", "GreeceF", "IrelandF", "ItalyF", "LatviaF",
     "LithuaniaF", "LuxembourgF", "MaltaF", "MonacoF", "NetherlandsF",
     "PortugalF", "San_MarinoF", "SlovakiaF", "SloveniaF", "SpainF",
     "Vatican_CityF"].map { String(describing: $0) }
  }
  
  public static let flagNameLabel = {
    ["Andorra", "Austria", "Belgium", "Cyprus",  "Estonia", "Finland", "France",
     "Germany", "Greece", "Ireland", "Italy", "Latvia", "Lithuania",
     "Luxembourg", "Malta", "Monaco", "Netherlands", "Portugal", "San_Marino",
     "Slovakia", "Slovenia", "Spain",
     "Vatican_City"].map { String(describing: $0) }
  }
  
  // Coins
  
  public static let coinPictureAndorra = {
    ["and_1", "and_2", "and_5", "and_10", "and_20", "and_50", "and_1e",
     "and_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureAusrtia = {
    ["aus_1", "aus_2", "aus_5", "aus_10", "aus_20", "aus_50", "aus_1e",
     "aus_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureBelgium = {
    ["belg_1", "belg_2", "belg_5", "belg_10", "belg_20", "belg_50",
     "belg_1e", "belg_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureCyprus = {
    ["cyp_1", "cyp_2", "cyp_5", "cyp_10", "cyp_20", "cyp_50", "cyp_1e",
     "cyp_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureEstonia = {
    ["est_1", "est_2", "est_5", "est_10", "est_20", "est_50", "est_1e",
     "est_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureFinland = {
    ["fin_1", "fin_2", "fin_5", "fin_10", "fin_20", "fin_50", "fin_1e",
     "est2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureFrance = {
    ["fran_1", "fran_2", "fran_5", "fran_10", "fran_20", "fran_50", "fran_1e",
     "fran_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureGermany = {
    ["ger_1", "ger_2", "ger_5", "ger_10", "ger_20", "ger_50", "ger_1e",
     "ger_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureGreece = {
    ["gree_1", "gree_2", "gree_5", "gree_10", "gree_20", "gree_50", "gree_1e",
     "gree_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureIreland = {
    ["ire_1", "ire_2", "ire_5", "ire_10", "ire_20", "ire_50", "ire_1e",
     "ire_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureItaly = {
    ["ita_1", "ita_2", "ita_5", "ita_10", "ita_20", "ita_50", "ita_1e",
     "ita_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureLatvia = {
    ["lat_1", "lat_2", "lat_5", "lat_10", "lat_20", "lat_50", "lat_1e",
     "lat_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureLithuania = {
    ["lith_1", "lith_2", "lith_5", "lith_10", "lith_20", "lith_50", "lith_1e",
     "lith_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureLuxembourg = {
    ["lux_1", "lux_2", "lux_5", "lux_10", "lux_20", "lux_50", "lux_1e",
     "lux_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureMalta = {
    ["mal_1", "mal_2", "mal_5", "mal_10", "mal_20", "mal_50", "mal_1e",
     "mal_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureMonaco = {
    ["mon_1", "mon_2", "mon_5", "mon_10", "mon_20", "mon_50", "mon_1e",
     "mon_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureNetherlands = {
    ["neth_1", "neth_2", "neth_5", "neth_10", "neth_20", "neth_50", "neth_1e",
     "neth_2e"].map { String(describing: $0) }
  }
  
  public static let coinPicturePortugal = {
    ["port_1", "port_2", "port_5", "port_10", "port_20", "port_50", "port_1e",
     "port_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureSan_Marino = {
    ["san_1", "san_2", "san_5", "san_10", "san_20", "san_50", "san_1e",
     "san_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureSlovakia = {
    ["slovak_1", "slovak_2", "slovak_5", "slovak_10", "slovak_20", "slovak_50",
     "slovak_1e", "slovak_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureSlovenia = {
    ["sloven_1", "sloven_2", "sloven_5", "sloven_10", "sloven_20", "sloven_50",
     "sloven_1e", "sloven_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureSpain = {
    ["spa_1", "spa_2", "spa_5", "spa_10", "spa_20", "spa_50", "spa_1e",
     "spa_2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureVatican_City = {
    ["vat_1", "vat_2", "vat_5", "vat_10", "vat_20", "vat_50", "vat_1e",
     "vat_2e"].map { String(describing: $0) }
  }
  
  public static let coinNameLabel = {
    ["1 euro cent", "2 euro cent", "5 euro cent", "10 euro cent",
     "20 euro cent", "50 euro cent",
     "1 euro", "2 euro"].map { String(describing: $0) }
  }
  
  public static let allCoinArray = [coinPictureAndorra, coinPictureAusrtia, coinPictureBelgium, coinPictureCyprus, coinPictureEstonia,
      coinPictureFinland, coinPictureFrance, coinPictureGermany,
      coinPictureGreece, coinPictureIreland, coinPictureItaly,
      coinPictureLatvia, coinPictureLithuania, coinPictureLuxembourg,
      coinPictureMalta, coinPictureMonaco, coinPictureNetherlands,
      coinPicturePortugal, coinPictureSan_Marino, coinPictureSlovakia,
      coinPictureSlovenia, coinPictureSpain, coinPictureVatican_City]
}
