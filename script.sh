#! /bin/bash

echo "Start copy....."

folder_maven="/Users/TungAnh/Working/Ekyc_SDK/ekyc-maven/repo"
folder_build="/Users/TungAnh/Working/VPbank_Android/ekyc2/ekyc-flutter/build/host/outputs/repo"

ekyc_flutter_sdk="/com/example/ekyc_flutter_sdk/ekyc_flutter_sdk"
tflite_flutter="/com/tfliteflutter/tflite_flutter_plugin/tflite_flutter"
flutter="/com/uiux/ekyc/flutter"
camera="/io/flutter/plugins/camera/camera"
flutter_plugin_android_lifecycle="/io/flutter/plugins/flutter_plugin_android_lifecycle/flutter_plugin_android_lifecycle"
path_provider_android="/io/flutter/plugins/pathprovider/path_provider_android"
url_launcher_android="/io/flutter/plugins/urllauncher/url_launcher_android"
webview_flutter_android="/io/flutter/plugins/webviewflutter/webview_flutter_android"


copy(){
	cp -r "$folder_build$2_debug/$1" "$folder_maven$2_debug/"
	cp -r "$folder_build$2_release/$1" "$folder_maven$2_release/"
	cp -r "$folder_build$2_profile/$1" "$folder_maven$2_profile/"
	echo "copy $2 version $1 is done"
}

copy $1 $ekyc_flutter_sdk
copy $1 $tflite_flutter
copy $1 $flutter
copy $1 $camera
copy $1 $flutter_plugin_android_lifecycle
copy $1 $path_provider_android
copy $1 $url_launcher_android
copy $1 $webview_flutter_android

echo "DONE"
echo "-------------"
