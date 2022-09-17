import QtQuick 2.0
import QtQml.Models 2.3
import Sign_Up 1.0
import "qrc:/main/"

Rectangle {
    id:sigup_rect
    anchors.fill:parent
    color: "#fcef80"
    property var ui_data: rtd.get_ui_data()
    signal exit_
    SUP{
        id:rtd
    }
    Title{
        id:signup_title
        title_text: "اومدی اسم بنویسی"
    }


    DelegateModel {
        id: signup_model
        model: sigup_rect.ui_data
        delegate: TFtext{
            label_text: ui_data[index]
            place_: ui_data[index] + " خود را وارد کنید"
            color_:"#d65253"
        }
    }
    Rectangle{
        anchors.top: signup_title.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 200
        color: "#F9A72B"
        ListView {
            id:lst_view
            anchors.fill: parent
            spacing: 10
            model: signup_model
        }
    }

    /*
    Rectangle{
        id:rec_right
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        width:parent.width - 200
        color: "#F9A72B"
        Rectangle{
            width:300
            height: 300
            anchors.centerIn: parent
            /*
            Image{
                source: "/pic/src/sgn.jpg"
                anchors.fill:parent
            }
        }
    }
    Rectangle{
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left:rec_right.right
        //color: parent.color
        /*
        Cloud{
            anchors.fill:parent
        }
        Rectangle{
            id:rec_right1
            anchors.top: parent.top
            anchors.topMargin: 200
            anchors.left: parent.left
            anchors.bottom: but2.bottom
            anchors.right: parent.right
            ListView {
                id:lst_view
                anchors.fill: parent
                spacing: 10
                model: signup_model
            }
        }
        DoubleButton{
            id:but2
            width:200
            height: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            onRightButton_clicked:{
                exit_()
            }
            onLeftButton_clicked: {
                var fstruct =  rtd.get_user_data()
                fstruct.fname = lst_view.itemAtIndex(0).field_text
                fstruct.lname = lst_view.itemAtIndex(1).field_text
                fstruct.uname = lst_view.itemAtIndex(2).field_text
                fstruct.pword = lst_view.itemAtIndex(3).field_text
                fstruct.email_ = lst_view.itemAtIndex(4).field_text
                rtd.set_user_data(fstruct)
                exit_()
            }
        }
    }*/

}
