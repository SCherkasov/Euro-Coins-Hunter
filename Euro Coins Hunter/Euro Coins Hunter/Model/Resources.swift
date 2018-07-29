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
    ["AndorraF", "AustriaF", "BelgiaF", "EstoniaF", "FinlandiaF", "FranciaF",
     "GermaniaF", "GreciaF", "IrlandiaF", "IspaniaF", "ItaliaF", "KiprF",
     "LatviaF", "LitvaF", "LuksemburgF", "MaltaF", "MonakoF", "NiderlandyF",
     "PortugaliaF", "San-marinoF", "SlovakiaF", "SloveniaF", "VatikanF"].map { String(describing: $0) }
  }
  
//  public static let flagPicture = {
//    ["AndorraF", "AustriaF", "FranciaF", "GermanyF", "MonakoF", "PortugaliaF",
//     "VatikanF"].map { String(describing: $0) }
//  }
  
  public static let flagNameLabel = {
    ["Andorra", "Austria", "Belgia", "Estonia", "Finlandia", "Francia",
     "Germania", "Grecia", "Irlandia", "Ispania", "Italia", "Kipr",
     "Latvia", "Litva", "Luksemburg", "Malta", "Monako", "Niderlandy",
     "Portugalia", "San-marino", "Slovakia", "Slovenia",
     "Vatikan"].map { String(describing: $0) }
  }
}
