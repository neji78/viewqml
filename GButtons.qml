import QtQuick 2.0
import QtQml.Models 2.3
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle{
    id:button_2
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
            enabled:do_enable(button_2.flag,name_)
            onClicked_:{
                /*
                if(name_ == "اضافه"){
                    add()
                }
                if(name_ == "ویرایش"){
                    edit()
                }
                if(name_ == "حذف"){
                    remove()
                }*/
            }
        }
    }
    ListView {
        anchors.fill: parent
        model: visualModel
    }
    function do_enable(flg, name){
        if(name !== "اضافه")
            return flg
        else
            return true
    }

}
