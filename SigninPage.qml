import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    id:main_rect
    property string username: "هیچکس "
    anchors.fill:parent
    color:"red"
    signal exit_
    ColumnLayout{
        id:mainVertical_layout
        anchors.fill:parent
        spacing: 2
        Rectangle{
            id:text_rect
            Layout.fillWidth: true
            Layout.preferredHeight:40
            Layout.alignment: Qt.AlignTop
            Layout.topMargin: 5
            Text{
                id:title_text
                anchors.centerIn: parent
                text:username + "خوش آمدید "
                font.pointSize: 10
            }
            CRect{
                id:menu_bar
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                width:50
                name_: "منو"
                onClicked_: toolbar_.source = "RToolBar.qml"
                Connections {
                    target: toolbar_.item
                    onHome:page_sign.source = "HomePage.qml"
                    onSetting:{
                        page_sign.source = "SettingPage.qml"
                    }
                    onExit:{
                        exit_()
                    }
                }
            }
        }
        /*
        Rectangle{
            id:buttons_
            Layout.fillWidth: true
            Layout.preferredHeight:40
            RowLayout{
                id:row_buttons_
                anchors.fill:parent
                Button{
                    id:add_word
                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width/2
                    text: "اضافه کردن لغت دلخواه"

                }
                Button{
                    id:offered_word
                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width/2
                    text: "معنی کردن لغات پیشنهادی"
                }
            }
        }*/
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight:main_rect.height - 80
            Loader{
                id:page_sign
                anchors.right: toolbar_.left
                anchors.top:parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                source : "HomePage.qml"
            }
            Loader{
                id:toolbar_
                width: 50
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }
        }
    }


}
