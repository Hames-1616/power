package com.example.power
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
}

class WifiMethodHandler(private val context: Context) : MethodChannel.MethodCallHandler {
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "connectToWifi" -> {
                val ssid = call.argument<String>("ssid")
                val password = call.argument<String>("password")
                val wifiManager = context.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
                val wifiConfig = WifiConfiguration().apply {
                    this.SSID = "\"$ssid\""
                    this.preSharedKey = "\"$password\""
                }
                val netId = wifiManager.addNetwork(wifiConfig)
                wifiManager.disconnect()
                wifiManager.enableNetwork(netId, true)
                result.success(wifiManager.reconnect())
            }
            else -> result.notImplemented()
        }
    }
    
    
}
