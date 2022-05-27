class CompanyDataModel {
  CompanyDataModel({
    required this.symbol,
    required this.assetType,
    required this.name,
    required this.description,
    required this.cik,
    required this.exchange,
    required this.currency,
    required this.country,
    required this.sector,
    required this.industry,
    required this.address,
    required this.fiscalYearEnd,
    required this.latestQuarter,
    required this.marketCapitalization,
    required this.ebitda,
    required this.peRatio,
    required this.pegRatio,
    required this.bookValue,
    required this.dividendPerShare,
    required this.dividendYield,
    required this.eps,
    required this.revenuePerShareTtm,
    required this.profitMargin,
    required this.operatingMarginTtm,
    required this.returnOnAssetsTtm,
    required this.returnOnEquityTtm,
    required this.revenueTtm,
    required this.grossProfitTtm,
    required this.dilutedEpsttm,
    required this.quarterlyEarningsGrowthYoy,
    required this.quarterlyRevenueGrowthYoy,
    required this.analystTargetPrice,
    required this.trailingPe,
    required this.forwardPe,
    required this.priceToSalesRatioTtm,
    required this.priceToBookRatio,
    required this.evToRevenue,
    required this.evToEbitda,
    required this.beta,
    required this.the52WeekHigh,
    required this.the52WeekLow,
    required this.the50DayMovingAverage,
    required this.the200DayMovingAverage,
    required this.sharesOutstanding,
    required this.dividendDate,
    required this.exDividendDate,
  });

  String symbol;
  String assetType;
  String name;
  String description;
  String cik;
  String exchange;
  String currency;
  String country;
  String sector;
  String industry;
  String address;
  String fiscalYearEnd;
  DateTime latestQuarter;
  String marketCapitalization;
  String ebitda;
  String peRatio;
  String pegRatio;
  String bookValue;
  String dividendPerShare;
  String dividendYield;
  String eps;
  String revenuePerShareTtm;
  String profitMargin;
  String operatingMarginTtm;
  String returnOnAssetsTtm;
  String returnOnEquityTtm;
  String revenueTtm;
  String grossProfitTtm;
  String dilutedEpsttm;
  String quarterlyEarningsGrowthYoy;
  String quarterlyRevenueGrowthYoy;
  String analystTargetPrice;
  String trailingPe;
  String forwardPe;
  String priceToSalesRatioTtm;
  String priceToBookRatio;
  String evToRevenue;
  String evToEbitda;
  String beta;
  String the52WeekHigh;
  String the52WeekLow;
  String the50DayMovingAverage;
  String the200DayMovingAverage;
  String sharesOutstanding;
  String dividendDate;
  String exDividendDate;

  factory CompanyDataModel.fromJson(Map<String, dynamic> json) =>
      CompanyDataModel(
        symbol: json["Symbol"],
        assetType: json["AssetType"],
        name: json["Name"],
        description: json["Description"],
        cik: json["CIK"],
        exchange: json["Exchange"],
        currency: json["Currency"],
        country: json["Country"],
        sector: json["Sector"],
        industry: json["Industry"],
        address: json["Address"],
        fiscalYearEnd: json["FiscalYearEnd"],
        latestQuarter: DateTime.parse(json["LatestQuarter"]),
        marketCapitalization: json["MarketCapitalization"],
        ebitda: json["EBITDA"],
        peRatio: json["PERatio"],
        pegRatio: json["PEGRatio"],
        bookValue: json["BookValue"],
        dividendPerShare: json["DividendPerShare"],
        dividendYield: json["DividendYield"],
        eps: json["EPS"],
        revenuePerShareTtm: json["RevenuePerShareTTM"],
        profitMargin: json["ProfitMargin"],
        operatingMarginTtm: json["OperatingMarginTTM"],
        returnOnAssetsTtm: json["ReturnOnAssetsTTM"],
        returnOnEquityTtm: json["ReturnOnEquityTTM"],
        revenueTtm: json["RevenueTTM"],
        grossProfitTtm: json["GrossProfitTTM"],
        dilutedEpsttm: json["DilutedEPSTTM"],
        quarterlyEarningsGrowthYoy: json["QuarterlyEarningsGrowthYOY"],
        quarterlyRevenueGrowthYoy: json["QuarterlyRevenueGrowthYOY"],
        analystTargetPrice: json["AnalystTargetPrice"],
        trailingPe: json["TrailingPE"],
        forwardPe: json["ForwardPE"],
        priceToSalesRatioTtm: json["PriceToSalesRatioTTM"],
        priceToBookRatio: json["PriceToBookRatio"],
        evToRevenue: json["EVToRevenue"],
        evToEbitda: json["EVToEBITDA"],
        beta: json["Beta"],
        the52WeekHigh: json["52WeekHigh"],
        the52WeekLow: json["52WeekLow"],
        the50DayMovingAverage: json["50DayMovingAverage"],
        the200DayMovingAverage: json["200DayMovingAverage"],
        sharesOutstanding: json["SharesOutstanding"],
        dividendDate: json["DividendDate"],
        exDividendDate: json["ExDividendDate"],
      );

  Map<String, dynamic> toJson() => {
        "Symbol": symbol,
        "AssetType": assetType,
        "Name": name,
        "Description": description,
        "CIK": cik,
        "Exchange": exchange,
        "Currency": currency,
        "Country": country,
        "Sector": sector,
        "Industry": industry,
        "Address": address,
        "FiscalYearEnd": fiscalYearEnd,
        "LatestQuarter":
            "${latestQuarter.year.toString().padLeft(4, '0')}-${latestQuarter.month.toString().padLeft(2, '0')}-${latestQuarter.day.toString().padLeft(2, '0')}",
        "MarketCapitalization": marketCapitalization,
        "EBITDA": ebitda,
        "PERatio": peRatio,
        "PEGRatio": pegRatio,
        "BookValue": bookValue,
        "DividendPerShare": dividendPerShare,
        "DividendYield": dividendYield,
        "EPS": eps,
        "RevenuePerShareTTM": revenuePerShareTtm,
        "ProfitMargin": profitMargin,
        "OperatingMarginTTM": operatingMarginTtm,
        "ReturnOnAssetsTTM": returnOnAssetsTtm,
        "ReturnOnEquityTTM": returnOnEquityTtm,
        "RevenueTTM": revenueTtm,
        "GrossProfitTTM": grossProfitTtm,
        "DilutedEPSTTM": dilutedEpsttm,
        "QuarterlyEarningsGrowthYOY": quarterlyEarningsGrowthYoy,
        "QuarterlyRevenueGrowthYOY": quarterlyRevenueGrowthYoy,
        "AnalystTargetPrice": analystTargetPrice,
        "TrailingPE": trailingPe,
        "ForwardPE": forwardPe,
        "PriceToSalesRatioTTM": priceToSalesRatioTtm,
        "PriceToBookRatio": priceToBookRatio,
        "EVToRevenue": evToRevenue,
        "EVToEBITDA": evToEbitda,
        "Beta": beta,
        "52WeekHigh": the52WeekHigh,
        "52WeekLow": the52WeekLow,
        "50DayMovingAverage": the50DayMovingAverage,
        "200DayMovingAverage": the200DayMovingAverage,
        "SharesOutstanding": sharesOutstanding,
        "DividendDate": dividendDate,
        "ExDividendDate": exDividendDate
      };
}
