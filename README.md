# ekyc-maven
- Ở flutter sdk khi build aar dùng lệnh sau: flutter build aar --build-number=x.x.x
- x.x.x là version phiên bản mới, phía android khi implement phải update theo version này
- Chạy "./script.sh x.x.x" trên terminal
- Ở project phần import trong build.gradle:     
    debugImplementation 'com.uiux.ekyc:flutter_debug:x.x.x'
    profileImplementation 'com.uiux.ekyc:flutter_profile:x.x.x'
    releaseImplementation 'com.uiux.ekyc:flutter_release:x.x.x'
