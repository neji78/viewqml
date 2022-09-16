import QtQuick 2.0
import QtQml.Models 2.3
Rectangle {
    id:rTool
    anchors.fill:parent
    signal exit;
    signal setting;
    signal home;
    DelegateModel {
        id: visualModel
        model: ListModel {
            ListElement { name: "خانه" }
            ListElement { name: "تنظیمات" }
            ListElement { name: "خروج" }
        }
        delegate: CRect {
            height: 50
            name_:name
            onClicked_:{
                if(name_ == "خانه"){
                    home()
                }
                if(name_ == "تنظیمات"){
                    setting()
                }
                if(name_ == "خروج"){
                    exit()
                }
            }
        }
    }
    ListView {
        anchors.fill: parent
        model: visualModel
    }

}
