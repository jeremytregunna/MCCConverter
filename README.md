# Mobile Country Code Converter

<img src="https://github.com/Greenshire/MCCConverter/blob/master/example.png" width="375" height="667">

Sometimes, like when talking with the CoreTelephony framework, you may want the E.212 country code, but often times, you want the E.164 code instead. CoreTelephony doesn't give you this information, so why not just use the ISO country code CoreTelephony gives you to find the E.164 without hitting a web service? Enter the Mobile Country Code Converter.

## Installation

***Cocoa Pods***

```
$ pod install MCCConverter
```

***Submodule***

```
$ git submodule add https://github.com/Greenshire/MCCConverter.git
```

Then drag the `MCCConverter.xcodeproj` file into your workspace, add it as a target dependency of your app target, and finally, add it to your link library build phase. Done.

## Example usage

```
let e164 = MCCConverter.sharedInstance.e164("US") // Returns +1 for the United States.
```

Using 2 digit country codes (or ISO country codes to be more accurate), you can use other values too for all known countries and regions with their own E.164 or E.212 value. For instance, Costa Rica:

```
let e212 = MCCConverter.sharedInstance.e212("CR") // Returns +712
let e164 = MCCConverter.sharedInstance.e164("CR") // Returns +506
```

## License

```
Copyright (c) 2016, Greenshire, Inc. All Rights Reserved.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

