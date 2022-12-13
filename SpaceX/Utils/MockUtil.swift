//
//  MockUtil.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import Foundation

extension MockUtil {
    var mockService: MockUtil {
        return MockUtil.shared
    }
}

class MockUtil {
    static let shared = MockUtil()
    
    static let rocketsMock: [Rocket] = [
        Rocket(height: Diameter(meters: Optional(22.25), feet: Optional(73.0)),
               diameter: Diameter(meters: Optional(1.68), feet: Optional(5.5)),
               mass: Mass(kg: 30146, lb: 66460),
               firstStage: FirstStage(thrustSeaLevel: Thrust(kN: 420, lbf: 94000),
                                      thrustVacuum: Thrust(kN: 480, lbf: 110000),
                                      reusable: false,
                                      engines: 1,
                                      fuelAmountTons: 44.3,
                                      burnTimeSEC: Optional(169)),
               secondStage: SecondStage(thrust: Thrust(kN: 31, lbf: 7000),
                                        payloads: Payloads(
                                            compositeFairing: CompositeFairing(
                                                height: Diameter(meters: Optional(3.5), feet: Optional(11.5)),
                                                diameter: Diameter(meters: Optional(1.5), feet: Optional(4.9))),
                                            option1: "composite fairing"),
                                        reusable: false,
                                        engines: 1,
                                        fuelAmountTons: 3.38,
                                        burnTimeSEC: Optional(378)),
               engines: Engines(isp: ISP(seaLevel: 267, vacuum: 304),
                                thrustSeaLevel: Thrust(kN: 420, lbf: 94000),
                                thrustVacuum: Thrust(kN: 480, lbf: 110000),
                                number: 1,
                                type: "merlin",
                                version: "1C",
                                layout: Optional("single"),
                                engineLossMax: Optional(0),
                                propellant1: "liquid oxygen",
                                propellant2: "RP-1 kerosene",
                                thrustToWeight: 96.0),
               landingLegs: LandingLegs(number: 0, material: nil),
               payloadWeights: [PayloadWeight(id: "leo", name: "Low Earth Orbit", kg: 450, lb: 992)],
               flickrImages: ["https://imgur.com/DaCfMsj.jpg",
                              "https://imgur.com/azYafd8.jpg"],
               name: "Falcon 1",
               type: "rocket",
               active: false,
               stages: 2,
               boosters: 0,
               costPerLaunch: 6700000,
               successRatePct: 40,
               firstFlight: "2006-03-24",
               country: "Republic of the Marshall Islands",
               company: "SpaceX",
               wikipedia: "https://en.wikipedia.org/wiki/Falcon_1",
               rocketDescription: "The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.",
               id: "5e9d0d95eda69955f709d1eb"),
        Rocket(height: Diameter(meters: Optional(70.0), feet: Optional(229.6)),
               diameter: Diameter(meters: Optional(3.7), feet: Optional(12.0)),
               mass: Mass(kg: 549054, lb: 1207920),
               firstStage: FirstStage(thrustSeaLevel: Thrust(kN: 7607, lbf: 1710000),
                                      thrustVacuum: Thrust(kN: 8227, lbf: 1849500),
                                      reusable: true,
                                      engines: 9,
                                      fuelAmountTons: 385.0,
                                      burnTimeSEC: Optional(162)),
               secondStage: SecondStage(thrust: Thrust(kN: 934, lbf: 210000),
                                        payloads: Payloads(
                                            compositeFairing: CompositeFairing(
                                                height: Diameter(meters: Optional(13.1), feet: Optional(43.0)),
                                                diameter: Diameter(meters: Optional(5.2), feet: Optional(17.1))),
                                            option1: "dragon"),
                                        reusable: false,
                                        engines: 1,
                                        fuelAmountTons: 90.0,
                                        burnTimeSEC: Optional(397)),
               engines: Engines(isp: ISP(seaLevel: 288, vacuum: 312),
                                thrustSeaLevel: Thrust(kN: 845, lbf: 190000),
                                thrustVacuum: Thrust(kN: 914, lbf: 205500),
                                number: 9,
                                type: "merlin",
                                version: "1D+",
                                layout: Optional("octaweb"),
                                engineLossMax: Optional(2),
                                propellant1: "liquid oxygen",
                                propellant2: "RP-1 kerosene",
                                thrustToWeight: 180.1),
               landingLegs: LandingLegs(number: 4, material: Optional("carbon fiber")),
               payloadWeights: [PayloadWeight(id: "leo", name: "Low Earth Orbit", kg: 22800, lb: 50265),
                                PayloadWeight(id: "gto", name: "Geosynchronous Transfer Orbit", kg: 8300, lb: 18300),
                                PayloadWeight(id: "mars", name: "Mars Orbit", kg: 4020, lb: 8860)],
               flickrImages: ["https://farm1.staticflickr.com/929/28787338307_3453a11a77_b.jpg",
                              "https://farm4.staticflickr.com/3955/32915197674_eee74d81bb_b.jpg",
                              "https://farm1.staticflickr.com/293/32312415025_6841e30bf1_b.jpg",
                              "https://farm1.staticflickr.com/623/23660653516_5b6cb301d1_b.jpg",
                              "https://farm6.staticflickr.com/5518/31579784413_d853331601_b.jpg",
                              "https://farm1.staticflickr.com/745/32394687645_a9c54a34ef_b.jpg"],
               name: "Falcon 9",
               type: "rocket",
               active: true,
               stages: 2,
               boosters: 0,
               costPerLaunch: 50000000,
               successRatePct: 98,
               firstFlight: "2010-06-04",
               country: "United States",
               company: "SpaceX",
               wikipedia: "https://en.wikipedia.org/wiki/Falcon_9",
               rocketDescription: "Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.", id: "5e9d0d95eda69973a809d1ec")]
    
    static let launchesMock: [Launch] = [
        Launch(id: "1", rocket: "5e9d0d95eda69955f709d1eb", name: "Rocket - 1", date: "2019-05-30T19:22:00.000Z", success: false),
        Launch(id: "2", rocket: "5e9d0d95eda69955f709d1eb", name: "Rocket - 2", date: "2020-05-30T19:22:00.000Z", success: true),
        Launch(id: "3", rocket: "5e9d0d95eda69955f709d1eb", name: "Rocket - 3", date: "2021-05-30T19:22:00.000Z", success: false),
        Launch(id: "4", rocket: "5e9d0d95eda69955f709d1eb", name: "Rocket - 4", date: "2022-05-30T19:22:00.000Z", success: true),
        Launch(id: "5", rocket: "5e9d0d95eda69955f709d1eb", name: "Rocket - 5", date: "2023-05-30T19:22:00.000Z", success: false)
    ]
}
