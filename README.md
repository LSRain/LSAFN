# LSAFN
 You can easily access the network data
## Instructions for use
- Open the network configuration of `info.plist` like this

```
<key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>
```
![LSAFN](http://upload-images.jianshu.io/upload_images/2329629-6c814535c6d47f5a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- Call functions

```
/* LS_AFN调用 */
func afnTest() -> Void {
        LS_AFN.sharedTools.requet(method: LS_AFNMethod.get, urlString: "http://www.weather.com.cn/data/sk/101010100.html", parameters: nil, success: { (responsObj) in
            
            // print(responsObj)
        }) { (error) in
            print(error)
        }
    }
```

- get a Optional result

![LSAFN_responder](http://upload-images.jianshu.io/upload_images/2329629-6f44f325c602f148.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)