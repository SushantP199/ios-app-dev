//
//  PreviewProvider.swift
//  swiftcoin
//
//  Created by iSushant on 22/01/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    let stat1 = StatisticModel(title: "Current Price", value: "$22,355.00", percentageChange: 0.04)
    let stat2 = StatisticModel(title: "Market Capitalization", value: "$413.15Bn", percentageChange: 1.67)
    let stat3 = StatisticModel(title: "Rank", value: "1", percentageChange: nil)
    let stat4 = StatisticModel(title: "Volume", value: "35.99Bn", percentageChange: nil)
    
    let sectiomModel = CoinDetailsSectionModel(label: "Overview", stats: [
       StatisticModel(title: "Current Price", value: "$22,355.00", percentageChange: 0.04),
       StatisticModel(title: "Market Capitalization", value: "$413.15Bn", percentageChange: 1.67),
       StatisticModel(title: "Rank", value: "1", percentageChange: nil),
       StatisticModel(title: "Volume", value: "35.99Bn", percentageChange: nil)
    ])
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        marketCapRank: 22876,
        marketCap: 440934957066,
        fullyDilutedValuation: 1,
        totalVolume: 480541757947,
        high24H: 37403230107,
        low24H: 23284,
        currentPrice: 22611,
        priceChange24H: 119.77,
        priceChangePercentage24H: 0.5263,
        marketCapChange24H: 4824853838,
        marketCapChangePercentage24H: 1.10634,
        circulatingSupply: 19269156,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -66.86376,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 33640.12683,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-01-22T10:46:46.393Z",
        sparklineIn7D: SparklineIn7D(price: [
            20737.959658386164,
            20732.608355807854,
            20606.5461758432,
            20674.634038731267,
            20731.63255622184,
            20733.65671731066,
            20696.454282735875,
            20747.94871301318,
            20814.711437098063,
            20956.258670269104,
            20885.701278781053,
            20889.403819883028,
            20700.805744941004,
            20901.09559081564,
            20920.837333244166,
            20903.899112009953,
            20812.144521910206,
            20906.040141869526,
            20924.7111951552,
            21190.077883095764,
            21252.80928594751,
            21026.965195103217,
            21182.34866601395,
            21224.083398217746,
            21185.648911080865,
            21072.65359224,
            20751.537690394238,
            20848.124708243373,
            20828.207191874055,
            20830.174346566208,
            20802.81790553102,
            20834.072135270028,
            20859.10770712413,
            20991.5669252237,
            20981.752724442926,
            21100.504618517323,
            21218.833092977453,
            21339.084564658813,
            21291.821112503225,
            21140.66776867305,
            21196.7043539542,
            21167.444996055972,
            21087.189102768214,
            21035.72416889137,
            21091.322083737952,
            21172.113197961044,
            21163.030385333517,
            21145.6834326599,
            21078.016212611372,
            21143.37185759893,
            21201.941740865605,
            21176.316447906156,
            21147.625909358103,
            21194.878269385026,
            21260.553260427037,
            21225.208422953252,
            21167.102796860785,
            21138.35118965325,
            21240.172245106583,
            21198.319122314566,
            21356.44102222878,
            21338.670970458825,
            21326.41137103781,
            21320.63011839789,
            21247.502058233295,
            21133.228554777954,
            21210.654453673727,
            21228.94986922072,
            21316.610964520347,
            21300.16714992632,
            21273.860887323823,
            21291.29088890238,
            21267.62240006751,
            21311.80322871148,
            21236.33404462805,
            21230.590444690875,
            21176.790798372233,
            21213.180310576274,
            21272.503908492723,
            21434.158598677062,
            21470.68464261412,
            21255.367139697784,
            20532.907207838653,
            20934.37579434191,
            20937.39396072067,
            20910.1451870655,
            20694.121613021045,
            20792.951370835992,
            20831.950823406285,
            20721.040207375805,
            20699.21555980322,
            20703.005937204824,
            20756.20479654092,
            20760.651852365685,
            20804.53758389287,
            20812.424364733422,
            20848.790124063587,
            20832.22709301364,
            20793.46276269477,
            20807.582649363158,
            20799.08306475155,
            20748.392092374652,
            20719.48660369809,
            20786.970374848017,
            20860.104147415946,
            20882.18578572461,
            20877.126652014747,
            20852.259373693443,
            20960.404359282198,
            21090.266589122053,
            21099.939720759114,
            20935.470397262245,
            21080.253855652136,
            21089.76082019566,
            21063.265412777684,
            21137.19112365942,
            21114.59209740846,
            21080.430488055168,
            20985.10026162292,
            20990.0990425081,
            20974.655186764052,
            20960.595624526584,
            20950.34484965064,
            20977.63903379022,
            20955.5008649984,
            20978.796922919933,
            21098.24954564038,
            21099.171128196944,
            21063.796423891363,
            21155.590480119536,
            21313.044810377636,
            21353.08278356443,
            21392.550651971153,
            21444.736578549597,
            22177.5639031667,
            22327.516532856698,
            22621.80907133512,
            22705.83367889906,
            22610.911113497386,
            22571.964470380102,
            22565.320045768174,
            22548.070087429172,
            22607.09241933134,
            22579.785588447427,
            22615.674556712373,
            22660.11660938527,
            22710.07984828147,
            23018.961631182327,
            22674.714410981822,
            22911.698287459338,
            23077.781529267388,
            22913.058447516567,
            22959.012989211962,
            23137.819618780108,
            23200.270789425595,
            23259.49142343769,
            23282.403316326596,
            23262.001117404445,
            23117.4751244099,
            23206.936034597747,
            23077.549641634356,
            22768.416907591723,
            22935.086466237175,
            22817.084168686346,
            22730.688503647285,
            22763.67074773826,
            22859.592833598555,
            22877.25614502751
        ]),
        priceChangePercentage24HInCurrency: 0.5263002951207968
    )
}
