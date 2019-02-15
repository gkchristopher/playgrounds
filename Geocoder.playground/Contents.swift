import UIKit
import CoreLocation
import MapKit

//let geocoder = CLGeocoder()
//
//
//let center = CLLocationCoordinate2D(latitude: 38.8595, longitude: -98.2369)
//let span = MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 34)
//
//let region = CLCircularRegion(center: center, radius: 100, identifier: "us")

//geocoder.geocodeAddressString("jackson") { placemarks, error in
//    placemarks!.forEach { print($0) }
//}

//geocoder.geocodeAddressString("paris", in: region) { (placemarks, error) in
//    dump(placemarks)
//}



let request = MKLocalSearch.Request()
request.naturalLanguageQuery = "Par"

let search = MKLocalSearch(request: request)

search.start { response, error in
    dump(response)
}
