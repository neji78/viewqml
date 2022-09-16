import QtQuick 2.0
import QtQuick 2.0
import QtQml.Models 2.3

Rectangle {
    id:main_rect
    anchors.fill:parent
    signal clicked_(string data);
    DelegateModel {
        id: visualModel
        model: ListModel {
            ListElement { name: "lcd" }
            ListElement { name: "lke" }
            ListElement { name: "bbc" }
        }
        delegate: Rectangle {
            height: 50
            width:parent.width
            color:"blue"
            Rectangle{
                height: parent.height - 10
                width: parent.width - 10
                anchors.centerIn: parent
                Text{
                    anchors.centerIn: parent
                    text:name
                }
                MouseArea{
                    anchors.fill:parent
                    hoverEnabled: true
                    onClicked: {
                        main_rect.clicked_(name)
                    }
                }
            }
        }
    }
    ListView {
        anchors.fill: parent
        model: visualModel
    }

}
