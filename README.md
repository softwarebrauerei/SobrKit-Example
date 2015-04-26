SobrKit-Example
===============

##Install & Run
1. Clone this repo `git clone git@github.com/softwarebrauerei/SobrKit-Example.git`
2. Run `pod install`
3. Open `SobrKit-Example.xcworkspace` and press `cmd+R`

## Usage
### Foundation Extension
See `FoundationExampleViewController.swift`

![Folder Structure Foundation](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/develop/assets/foundation-structure-screenshot.jpg)

### UIKit Extension
See `Main.storyboard`
![UIKit Extension Screenshot](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/develop/assets/uikit-extension-screenshot.jpg)

### Alamofire Extension
As example we've used the api from [The Internet Chuck Norris Database](http://www.icndb.com/api/)

The response of the service looks like this

```json
{
  "type": "success",
  "value": [
    {
      "id": 362,
      "joke": "Chuck Norris can do a roundhouse kick faster than the speed of light. This means that if you turn on a light switch, you will be dead before the lightbulb turns on.",
      "categories": []
    },
    {
      "id": 398,
      "joke": "Chuck Norris is not Irish. His hair is soaked in the blood of his victims.",
      "categories": []
    }
  ]
}
```
#### The Model Object
Have a look at `Model.swift` to see how to implement some model objects for this response.

#### The API Controller
Have a look at `API.swift` to see how the request is called.

![Object Mapping](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/develop/assets/alamofire-object-mapping-screenshot.jpg)

#### The View Controller
In the `AlamofireViewController.swift` we use the API class function `fetchJokes(...` to fetch 15 jokes from the service. One of these jokes will be displayed in the view.

### Model Aware Controls

## Authors

- Silas Knobel, https://github.com/katunch

## License

SobrKit-Example is available under the MIT license. See the LICENSE file for more info.
