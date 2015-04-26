SobrKit-Example
===============

##Install & Run
1. Clone this repo `git clone git@github.com:softwarebrauerei/SobrKit-Example.git`
2. Run `pod install`
3. Open `SobrKit-Example.xcworkspace` and press `cmd+R`

## Usage
### Foundation Extension
See `FoundationExampleViewController.swift`

![Folder Structure Foundation](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/master/assets/foundation-structure-screenshot.jpg)

### UIKit Extension
See `Main.storyboard`
![UIKit Extension Screenshot](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/master/assets/uikit-extension-screenshot.jpg)

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

![Object Mapping](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/master/assets/alamofire-object-mapping-screenshot.jpg)

#### The View Controller
In the `AlamofireViewController.swift` we use the API class function `fetchJokes(...` to fetch 15 jokes from the service. One of these jokes will be displayed in the view.

### Model Aware Controls
TL;DR Databinding for UIControls!

With Model Aware Controls you are able to bind ui elements directly to your model objects. Without a line of code. Just define the `Model Key Path` in the Interface Builder and enjoy!
![Databinding](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/master/assets/databinding-screenshot.jpg)

**Databinding is available for these contorls**
* UILabel
* UITextView
* UITextField
* UISwitch
* UISegmentedControl

#### Other properties on Model Aware Controls
![Model Aware Options](https://raw.githubusercontent.com/softwarebrauerei/SobrKit-Example/master/assets/model-aware-options-screenshot.jpg)
* `Realtime`

 Observes the model key path and updates the control when the model is updated.

* `Required`

	Boolean if the value can be empty. 

* `Error Background Color` or `Error Tint Color`

	The background color of the control will be set to this color if there is a validation error.

* `Valid Background Color` or `Valid Tint Color`

	The background color of the control will be set to this color if the validation is passed. 

* `Validation Pattern`

	Set a regex via this property and it will be validated with this regex. For convenience you can type `email` to validate an email addresses.


## Authors

- Silas Knobel, https://github.com/katunch

## License

SobrKit-Example is available under the MIT license. See the LICENSE file for more info.
