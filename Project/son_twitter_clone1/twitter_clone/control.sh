#!/bin/bash




main() {
    mainMenu="Enter a choice: "
    echo mainMenu
    select ch in "Initialize project" "Watch and Compile Mobx Models" "WatchMobxModelsWithoutDelete" "Just Compile Mobx Model" "Compile Mobx Model and Build Apk" "Compile Mobx Model and run" "Update App Icon" "Update App Name" "update locale keys" Cancel
    do
        case $ch in 
            "Initialize project")
                InitializeProject
                main
                ;;
            "Watch and Compile Mobx Models")
                WatchMobxModels
                main
                ;;
            "WatchMobxModelsWithoutDelete")
                WatchMobxModelsWithoutDelete
                main
                ;;
            "Just Compile Mobx Model")
                CompileMobxModel
                main
                ;;
            "Compile Mobx Model and Build Apk")
                CompileMobxModel
                buildApk
                 main
                ;;
            "Compile Mobx Model and run")
                CompileMobxModel            # you need to fix the menu text
                run
                ;;
            "Update App Icon")
                updateIcon
                main
                ;;
            "Update App Name")
                updateAppName
                main
                ;;
                "update locale keys")
                updateLocaleKeys
                main
                ;;
            Cancel)
                exit
                ;;
        esac
    done
}
CompileMobxModel() {
    flutter packages pub run build_runner build --delete-conflicting-outputs
}

WatchMobxModels(){
    flutter packages pub run build_runner watch --delete-conflicting-outputs
}

WatchMobxModelsWithoutDelete(){
    flutter packages pub run build_runner watch
}

run(){
    flutter run 
}

buildApk(){
    flutter build apk --release
}

updateIcon(){
 flutter pub run flutter_launcher_icons:main
}

updateAppName(){
flutter pub run flutter_launcher_name:main
}

InitializeProject(){
    current=$(pwd)
    cd "./lib/src/plugins"
    for d in */ ; do
        cd "$d"
        flutter pub get
        cd "../"
    done
    cd $current
    flutter pub get
}
updateLocaleKeys(){
    flutter pub run easy_localization:generate -S ./assets/translations
    flutter pub run easy_localization:generate -S ./assets/translations  -f keys -o locale_keys.g.dart
}

main "$@"