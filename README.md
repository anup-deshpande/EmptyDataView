# EmptyDataView

EmptyDataView enables you to show user friendly views when table data is empty.

<p>
    <a href="https://github.com/anup-deshpande/EmptyDataView/blob/main/LICENSE.md"><img alt="MIT license" src="https://img.shields.io/github/license/anup-deshpande/EmptyDataView"></a>
    <img alt="Swift Compatibility" src="https://img.shields.io/badge/Swift Compatibility-5.3-blue">
   <img alt="Platform Compatibility" src="https://img.shields.io/badge/Platform Compatibility-iOS-orange">
</p>


<p align = "center">
    <img src="https://user-images.githubusercontent.com/42949670/110160248-c2780780-7db9-11eb-9036-e7f36ce5b02b.jpg" width="300" height="432" />
</p>

## Installation

### Swift Package Manager
To integrate using [Apple's Swift Package Manager](https://swift.org/package-manager/):

- File > Swift Packages > Add Package Dependency
- Add ``` https://github.com/anup-deshpande/EmptyDataView.git ```

## How to use

```swift
import EmptyDataView
```

```swift
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    // Load empty data view if table data is empty
    if colorList.isEmpty{
        tableView.setEmptyDataView(image: UIImage(systemName: "paintpalette")!, title: "No colors in the palette")
    }else{
        tableView.removeEmptyDataView()
    }
        
    return colorList.count
}
```

Note - If you are using separator style, please make sure to set it to none.
```swift
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    // Load empty data view if table data is empty
    if colorList.isEmpty{
        tableView.separatorStyle = .none
        tableView.setEmptyDataView(image: UIImage(systemName: "paintpalette")!, title: "No colors in the palette")
    }else{
        tableView.separatorStyle = .singleLine
        tableView.removeEmptyDataView()
    }
        
    return colorList.count
}
```

