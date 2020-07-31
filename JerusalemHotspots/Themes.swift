import Mapbox

// Themes with markers, map styles, and color schemes.
class MBXTheme : NSObject {
    
    static let grayTheme = Theme(defaultMarker: UIImage(named: "white_unselected_bike")!, selectedMarker: UIImage(named: "white_unselected_bike")!, styleURL: MGLStyle.satelliteStreetsStyleURL, themeColor: ThemeColor.grayTheme, fileURL: Bundle.main.url(forResource: "pointDataset", withExtension: "geojson")!)
    
    static let themes: [Theme] = [
        grayTheme,
    ]
}

// Colors that match the provided themes.
class ThemeColor: NSObject {
    static let grayTheme = Color(primaryColor: UIColor(red:0.93, green:0.94, blue:0.94, alpha:1.0),
    primaryDarkColor: UIColor(red:0.41, green:0.41, blue:0.41, alpha:1.0),
    navigationLineColor: UIColor(red:0.41, green:0.41, blue:0.41, alpha:1.0),
    lowerCardTextColor: UIColor(red:0.41, green:0.41, blue:0.41, alpha:1.0),
    accentColor: UIColor(red:0.62, green:0.62, blue:0.62, alpha:1.0))
}

// MARK: Structs for Theme and Color objects.
struct Color {
    let primaryColor : UIColor
    let navigationLineColor: UIColor
    let lowerCardTextColor: UIColor
    let primaryDarkColor: UIColor
    let accentColor: UIColor
    
    init(primaryColor: UIColor, primaryDarkColor: UIColor, navigationLineColor: UIColor, lowerCardTextColor: UIColor, accentColor: UIColor) {
        self.primaryColor = primaryColor
        self.primaryDarkColor = primaryDarkColor
        self.lowerCardTextColor = lowerCardTextColor
        self.accentColor = accentColor
        self.navigationLineColor = navigationLineColor
    }
}

struct Theme {
    var styleURL: URL
    var defaultMarker: UIImage
    var selectedMarker: UIImage
    var themeColor: Color
    var fileURL: URL
    init(defaultMarker: UIImage, selectedMarker: UIImage, styleURL: URL, themeColor: Color, fileURL: URL) {
        self.defaultMarker = defaultMarker
        self.selectedMarker = selectedMarker
        self.styleURL = styleURL
        self.themeColor = themeColor
        self.fileURL = fileURL
    }
}
