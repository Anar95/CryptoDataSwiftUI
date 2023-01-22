//
//  CoinModel.swift
//  CryptoData
//
//  Created by Anar Abbas on 22.01.2023.
//

import Foundation


    /* Coin Gecko İNFO API
    
      URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24
     
     JSON Response:
     {
        "id": "bitcoin",
        "symbol": "btc",
        "name": "Bitcoin",
        "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        "current_price": 22809,
        "market_cap": 439643610899,
        "market_cap_rank": 1,
        "fully_diluted_valuation": 479123849599,
        "total_volume": 32261115901,
        "high_24h": 23283,
        "low_24h": 22703,
        "price_change_24h": -434.9598935860922,
        "price_change_percentage_24h": -1.87127,
        "market_cap_change_24h": -8517425578.166626,
        "market_cap_change_percentage_24h": -1.90053,
        "circulating_supply": 19269581,
        "total_supply": 21000000,
        "max_supply": 21000000,
        "ath": 69045,
        "ath_change_percentage": -66.93777,
        "ath_date": "2021-11-10T14:24:11.849Z",
        "atl": 67.81,
        "atl_change_percentage": 33564.76938,
        "atl_date": "2013-07-06T00:00:00.000Z",
        "roi": null,
        "last_updated": "2023-01-22T19:33:34.332Z",
        "sparkline_in_7d": {
          "price": [
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
            22877.25614502751,
            22939.06268266951,
            22905.933838447523,
            22905.650386560363,
            22872.269439060954,
            22892.74230691543,
            22828.063535702233,
            22846.403473678234,
            22928.759108503713,
            23030.598701476505,
            22838.60376102746,
            22819.5453267843
          ]
        }
      }
     
     */
    
struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}


struct SparklineIn7D: Codable{
    let price: [Double]?
}

