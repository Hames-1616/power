package com.example.power
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import androidx.annotation.NonNull
import android.net.wifi.WifiNetworkSuggestion
import android.net.wifi.WifiManager
//import android.content.Context

class MainActivity: FlutterActivity() {
 // val contex = this.applicationContext
  override fun configureFlutterEngine(flutterengine : FlutterEngine)
  {
    super.configureFlutterEngine(flutterengine)
    MethodChannel(flutterengine.dartExecutor.binaryMessenger,"check").setMethodCallHandler{
      call,result ->
      if(call.method == "connect")
      {
        val ssi = call.argument("ssid")?:""
        val pass = call.argument("pass")?:""
        //val wifiManager = contex.getSystemService(Context.WIFI_SERVICE) as WifiManager
        val wifiNetworkSuggestion = WifiNetworkSuggestion.Builder()
            .setSsid(ssi)
            .setWpa2Passphrase(pass)
            .build()
        val suggestions = listOf(wifiNetworkSuggestion)
       // val status = wifiManager.addNetworkSuggestions(suggestions)
      //  val sabe = wifiManager.configuredNetworks 
     //   for (i in sabe) {
     //     var s = i.SSID
         //     wifiManager.enableNetwork(i.networkId,true)
    //  }
    //  result.success(status)
     // }
     // else
     // {
     //   result.notImplemented()
    //  }
  //  }
  }
}
  }
}