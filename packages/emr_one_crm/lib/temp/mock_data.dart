import 'package:emr_one_crm/models/models.dart';

class MockData {
  /*
  SELECT 'const OrderBook(' + CAST(ContractOrderBookTypeID AS VARCHAR(MAX)) 
  + ', "' + ContractOrderBookTypeName + '"),'
  FROM T2_ContractOrderBookType
  WHERE Active = 1
  ORDER BY ContractOrderBookTypeName
  */
  // static List<OrderBook> getOrderBooks() => [
  //       const OrderBook(59, "B2B - EMR Trading"),
  //       const OrderBook(169, "B2B - France Domestic"),
  //       const OrderBook(170, "B2B - France Intra EU"),
  //       const OrderBook(34, "B2B - Germany"),
  //       const OrderBook(142, "B2B - Germany Intra EU"),
  //       const OrderBook(141, "B2B - Germany Triangulation"),
  //       const OrderBook(37, "B2B - Intercompany"),
  //       const OrderBook(130, "B2B - Italy Domestic"),
  //       const OrderBook(144, "B2B - Italy Intra EU"),
  //       const OrderBook(20, "B2B - Netherlands Domestic"),
  //       const OrderBook(140, "B2B - Netherlands Intra EU"),
  //       const OrderBook(137, "B2B - Netherlands Triangulation"),
  //       const OrderBook(39, "B2B - RGL"),
  //       const OrderBook(136, "B2B - Spain Domestic"),
  //       const OrderBook(143, "B2B - Spain Intra EU"),
  //       const OrderBook(48, "B2B - UK Domestic"),
  //       const OrderBook(179, "B2B - UK MWR"),
  //       const OrderBook(45, "B2B - USA Deep Sea"),
  //       const OrderBook(73, "B2B - USA Domestic - Eastern"),
  //       const OrderBook(71, "B2B - USA Domestic - Northern"),
  //       const OrderBook(72, "B2B - USA Domestic - Southern"),
  //       const OrderBook(90, "B2B - USA Gold"),
  //       const OrderBook(133, "B2B DNG - GER"),
  //       const OrderBook(134, "B2B DNG - NED"),
  //       const OrderBook(6, "B2B FER - Container"),
  //       const OrderBook(193, "B2B NFE -  Netherlands Triangulation"),
  //       const OrderBook(198, "B2B NFE - Germany"),
  //       const OrderBook(197, "B2B NFE - Germany Intra EU"),
  //       const OrderBook(196, "B2B NFE - Germany Triangulation"),
  //       const OrderBook(4, "B2B NFE - Hong Kong"),
  //       const OrderBook(191, "B2B NFE - Netherlands Domestic"),
  //       const OrderBook(192, "B2B NFE - Netherlands Intra EU"),
  //       const OrderBook(35, "B2B NFE - USA"),
  //       const OrderBook(139, "B2B NFE - USA Gold (EMR Managed)"),
  //       const OrderBook(127, "B2B SWE - GER"),
  //       const OrderBook(38, "Hedging Control"),
  //       const OrderBook(166, "Purchase - FRANCE Fixed"),
  //       const OrderBook(50, "Purchase - GER Fixed"),
  //       const OrderBook(52, "Purchase - GER Price Matrix"),
  //       const OrderBook(36, "Purchase - IMR"),
  //       const OrderBook(185, "Purchase - Italy Fixed"),
  //       const OrderBook(189, "Purchase - MBA"),
  //       const OrderBook(178, "Purchase - MWR  Price Matrix"),
  //       const OrderBook(177, "Purchase -
  //            MWR Price Matrix Period Negotiated"),
  //       const OrderBook(18, "Purchase - Netherlands Fixed"),
  //       const OrderBook(19, "Purchase - Netherlands Price Matrix"),
  //       const OrderBook(115, "Purchase - SPAIN Fixed"),
  //       const OrderBook(161, "Purchase - UK Fixed Ferrous North"),
  //       const OrderBook(162, "Purchase - UK Fixed Ferrous South"),
  //       const OrderBook(174, "Purchase - UK Fixed MWR"),
  //       const OrderBook(10, "Purchase - UK Fixed Non Ferrous"),
  //       const OrderBook(12, "Purchase - UK Interdepot"),
  //       const OrderBook(13, "Purchase - UK Interdepot Short Sea"),
  //       const OrderBook(11, "Purchase - UK Price Matrix"),
  //       const OrderBook(135, "Purchase - UK Price Matrix Period Negotiated"),
  //       const OrderBook(56, "Purchase - USA Fixed"),
  //       const OrderBook(57, "Purchase - USA Interdepot"),
  //       const OrderBook(58, "Purchase - USA Price Matrix"),
  //       const OrderBook(131, "Purchase DNG - GER Yard"),
  //       const OrderBook(132, "Purchase DNG - NED Yard"),
  //       const OrderBook(194, "Purchase FER - Netherlands Fixed"),
  //       const OrderBook(75, "Purchase FER - UK EMR Steels"),
  //       const OrderBook(147, "Purchase FER - USA Eastern"),
  //       const OrderBook(145, "Purchase FER - USA Northern"),
  //       const OrderBook(146, "Purchase FER - USA Southern"),
  //       const OrderBook(184, "Purchase FER - USA Southern West"),
  //       const OrderBook(173, "Purchase ITA - France Yard"),
  //       const OrderBook(128, "Purchase ITA - GER Yard"),
  //       const OrderBook(129, "Purchase ITA - NED Yard"),
  //       const OrderBook(160, "Purchase ITA - Spain Yard"),
  //       const OrderBook(195, "Purchase NFE - GER Fixed"),
  //       const OrderBook(67, "Purchase NFE - USA Eastern"),
  //       const OrderBook(65, "Purchase NFE - USA Northern"),
  //       const OrderBook(66, "Purchase NFE - USA Southern"),
  //       const OrderBook(85, "Purchase NFE - USA Southern West"),
  //       const OrderBook(81, "Purchase SOLDER - UK Fixed"),
  //       const OrderBook(125, "Purchase SWE - GER Yard"),
  //       const OrderBook(126, "Purchase SWE - NED Yard"),
  //       const OrderBook(32, "Sales - IMR"),
  //       const OrderBook(190, "Sales - MBA"),
  //       const OrderBook(33, "Sales - UK Price Matrix"),
  //       const OrderBook(187, "Sales - UK Waste"),
  //       const OrderBook(168, "Sales FER - FRANCE Deep sea"),
  //       const OrderBook(167, "Sales FER - FRANCE Short Sea"),
  //       const OrderBook(171, "Sales FER - France Yard"),
  //       const OrderBook(182, "Sales FER - GER Container"),
  //       const OrderBook(46, "Sales FER - GER Deep Sea"),
  //       const OrderBook(51, "Sales FER - GER Domestic"),
  //       const OrderBook(74, "Sales FER - GER Short Sea"),
  //       const OrderBook(5, "Sales FER - Intl Container"),
  //       const OrderBook(176, "Sales FER - M&W Orderbook"),
  //       const OrderBook(183, "Sales FER - Netherlands Container"),
  //       const OrderBook(40, "Sales FER - Netherlands Deep Sea"),
  //       const OrderBook(22, "Sales FER - Netherlands Domestic"),
  //       const OrderBook(42, "Sales FER - Netherlands Short Sea"),
  //       const OrderBook(118, "Sales FER - SPAIN Deep sea"),
  //       const OrderBook(117, "Sales FER - SPAIN Short sea"),
  //       const OrderBook(148, "Sales FER - Spain Yard"),
  //       const OrderBook(47, "Sales FER - TMA Depots"),
  //       const OrderBook(8, "Sales FER - UK Deep Sea"),
  //       const OrderBook(7, "Sales FER - UK Domestic"),
  //       const OrderBook(156, "Sales FER - UK ELV"),
  //       const OrderBook(76, "Sales FER - UK EMR Steels"),
  //       const OrderBook(165, "Sales FER - UK Foundry"),
  //       const OrderBook(180, "Sales Fer - UK M&W Steelworks"),
  //       const OrderBook(9, "Sales FER - UK Short Sea"),
  //       const OrderBook(60, "Sales FER - UK Steelworks"),
  //       const OrderBook(43, "Sales FER - UK Unalloc Deep Sea"),
  //       const OrderBook(44, "Sales FER - UK Unalloc Short Sea"),
  //       const OrderBook(188, "Sales FER - USA Container Export"),
  //       const OrderBook(55, "Sales FER - USA Domestic"),
  //       const OrderBook(70, "Sales FER - USA Domestic - Eastern"),
  //       const OrderBook(68, "Sales FER - USA Domestic - Northern"),
  //       const OrderBook(69, "Sales FER - USA Domestic - Southern"),
  //       const OrderBook(79, "Sales FER - USA Export"),
  //       const OrderBook(87, "Sales FER - USA Gold"),
  //       const OrderBook(159, "Sales FER - USA Southern"),
  //       const OrderBook(181, "Sales Fer UK M&W Short Sea"),
  //       const OrderBook(157, "Sales NFE - EMR USA Specialist Yard"),
  //       const OrderBook(172, "Sales NFE - France Yard"),
  //       const OrderBook(3, "Sales NFE - GER Yard"),
  //       const OrderBook(186, "Sales NFE - Italy Yard"),
  //       const OrderBook(175, "Sales NFE - M&W Orderbook"),
  //       const OrderBook(61, "Sales NFE - Netherlands Yard"),
  //       const OrderBook(149, "Sales NFE - Spain Yard"),
  //       const OrderBook(41, "Sales NFE - Specialist"),
  //       const OrderBook(2, "Sales NFE - UK SEP"),
  //       const OrderBook(1, "Sales NFE - UK Yard"),
  //       const OrderBook(64, "Sales NFE - USA Eastern"),
  //       const OrderBook(88, "Sales NFE - USA Gold"),
  //       const OrderBook(138, "Sales NFE - USA Gold (EMR Managed)"),
  //       const OrderBook(62, "Sales NFE - USA Northern"),
  //       const OrderBook(63, "Sales NFE - USA Southern"),
  //       const OrderBook(158, "Sales NFE - USA Spectrum (Gold Managed)"),
  //       const OrderBook(54, "Sales NFE - USA Yard"),
  //       const OrderBook(80, "Sales SOLDER - UK Domestic"),
  //       const OrderBook(30, "WWT - EMR"),
  //       const OrderBook(31, "WWT - IMR"),
  //     ];

  /*
  SELECT 'const ContractType(' + CAST(ContractTypeID AS VARCHAR(MAX)) 
  + ', "' + ContractTypeName + '"),'
  FROM T2_ContractType 
  WHERE Active = 1
  */
  static List<ContractType> getContractTypes() => [
        const ContractType(1, 'Purchase'),
        const ContractType(2, 'Sales'),
      ];

  /*
  SELECT 'const PriceType(' + CAST(PriceTypeID AS VARCHAR(MAX)) 
  + ', "' + PriceTypeName + '"),'
  FROM t2_contractheaderpricetype 
  WHERE Active = 1
  */

  static PriceType priceTypeFixedPriceNoHedge =
      const PriceType(1, 'Fixed Price', 'No Hedge');

  static PriceType priceTypeFixedPriceLmeHedge =
      const PriceType(2, 'Fixed Price', 'LME Hedge');

  static PriceType priceTypeUnfixedPriceNoHedgeOurOption =
      const PriceType(3, 'Unfixed Price', 'No Hedge (our option)');

  static PriceType priceTypeUnfixedPriceLmeHedgeCustomerOption =
      const PriceType(4, 'Unfixed Price', 'LME Hedge (customer option)');

  static List<PriceType> getPriceTypes() => [
        priceTypeFixedPriceNoHedge,
        priceTypeFixedPriceLmeHedge,
        priceTypeUnfixedPriceNoHedgeOurOption,
        priceTypeUnfixedPriceLmeHedgeCustomerOption,
      ];

  static List<String> getCurrencyCodes() => ['GBP', 'USD', 'EUR'];

  static List<DeliveryMethod> getDeliveryMethods() => [
        const DeliveryMethod(1, 'Delivered'),
        const DeliveryMethod(2, 'Collected'),
        const DeliveryMethod(3, 'Collected', subTitle: 'less charge'),
        const DeliveryMethod(4, 'Collected', subTitle: 'fully charged'),
      ];
}
