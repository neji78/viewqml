import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQml.Models 2.3

Rectangle {
    id:home_rect
    anchors.fill:parent
    color:"blue"
    signal add
    signal edit
    signal remove

    ColumnLayout{
        anchors.fill:parent
        spacing: 1
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: home_rect.height/3
            Layout.alignment: Qt.AlignTop
            color:"yellow"
            RowLayout{
                anchors.fill:parent
                //date and clock part
                DataRect{
                    id:dataclock
                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width/3
                    color:"black"
                }

                Rectangle{
                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width - parent.width/3
                    WOfferdRect{

                    }

                }
            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: home_rect.height - home_rect.height/3
            color:"green"
            RowLayout{
                anchors.fill:parent
                Rectangle{
                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width - 100
                    color:"black"
                    WListRect{
                        onClicked_:{
                            console.log(data);
                            gbutton.flag = true;
                        }
                    }
                }
                GButtons{
                    id:gbutton
                    Layout.fillHeight: true
                    Layout.preferredWidth: 100
                }
            }

        }
    }


}
