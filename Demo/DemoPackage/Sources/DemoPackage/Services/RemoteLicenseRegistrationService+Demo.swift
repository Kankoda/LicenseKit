//
//  RemoteLicenseService+Demo.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-10-27.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

extension RemoteLicenseService {

    /**
     This service uses a fake network service that returns a
     demo license that is defined in `Licenses/License+Demo`.
     */
    static func demoService(for license: License) throws -> RemoteLicenseService<ResponseType> {
        try RemoteLicenseService<ResponseType>(
            license: license,
            networkService: FakeNetworkService(),
            urlBuilder: { licenseKey in URL(string: "https://not-used")! },
            methodBuilder: { licenseKey in "GET" },
            headersBuilder: { licenseKey in ["not": "used"] }
        )
    }
}

struct FakeNetworkResponse: LicenseMappable, Encodable {

    var license: License { .demoLicense(method: "remote") }
}

private class FakeNetworkService: NetworkService {

    func performUrlRequest(_ request: URLRequest) async throws -> Data {
        let response = FakeNetworkResponse()
        let encoder = JSONEncoder()
        let data = try encoder.encode(response)
        return data
    }
}
