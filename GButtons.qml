import QtQuick 2.0
import QtQml.Models 2.3
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle{
    id:main_rect
    property bool flag: false
    DelegateModel {
        id: visualModel
        model: ListModel {
            ListElement { name: "اضافه" }
            ListElement { name: "ویرایش" }
            ListElement { name: "حذف" }
        }
        delegate: CRect {
            id:compo
            height: 20
            name_:name
            Component.onCompleted: {
                if(name_ != "اضافه"){
                   compo.enabled = main_rect.flag
                }
            }

            onClicked_:{
                if(name_ == "اضافه"){
                    add()
                }
                if(name_ == "ویرایش"){
                    edit()
                }
                if(name_ == "حذف"){
                    remove()
                }
            }
        }
    }
    ListView {
        anchors.fill: parent
        model: visualModel
    }

}
