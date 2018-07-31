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
  
  public static let flagNameLabel = {
    ["Andorra", "Austria", "Belgia", "Estonia", "Finlandia", "Francia",
     "Germania", "Grecia", "Irlandia", "Ispania", "Italia", "Kipr",
     "Latvia", "Litva", "Luksemburg", "Malta", "Monako", "Niderlandy",
     "Portugalia", "San-marino", "Slovakia", "Slovenia",
     "Vatikan"].map { String(describing: $0) }
  }
  
  // Coins
  
  public static let coinPictureAusrtia = {
    ["aus1", "aus2", "aus5", "aus10", "aus20", "aus50", "aus1e",
     "aus2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureAndorra = {
    ["and1", "and2", "and5", "and10", "and20", "and50", "and1e",
     "and2e"].map { String(describing: $0) }
  }
  
  public static let coinPictureBelgiaTypeOne = {
    ["belgT1_1", "belgT1_2", "belgT1_5", "belgT1_10", "belgT1_20", "belgT1_50",
     "belgT1_1e", "belgT1_2e"].map { String(describing: $0) }
  }
  
  public static let coinNameLabel = {
    ["1 euro cent", "2 euro cent", "5 euro cent", "10 euro cent",
     "20 euro cent", "50 euro cent",
     "1 euro", "2 euro"].map { String(describing: $0) }
  }
  
}
