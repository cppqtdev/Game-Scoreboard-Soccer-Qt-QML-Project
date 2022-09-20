import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../Components"
import QtQuick.Dialogs 1.0
Item {
    ColorDialog {
        id: backgroudColor
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + backgroudColor.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: numBack
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + numBack.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: periodColr
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + periodColr.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }

    ColorDialog {
        id: scoreColor
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + scoreColor.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: textandborder
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + textandborder.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: periodTime
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + periodTime.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }


    ColorDialog {
        id: shorts
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + shorts.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: ck
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + ck.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: selected
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + selected.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }


    ColorDialog {
        id: saves
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + saves.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: appBack
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + appBack.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    ColorDialog {
        id: appMain
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + appMain.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }

    ColumnLayout{
        spacing: 50
        anchors.horizontalCenter: parent.horizontalCenter
        Label{
             Layout.alignment: Qt.AlignHCenter
             font.pixelSize: 32
             text: qsTr("Color Settings")
             color: "#ffffff"
             Layout.topMargin: 20

        }
        RowLayout{
            Layout.fillWidth: true
            spacing:root.width*0.2
            Layout.alignment: Qt.AlignHCenter
        ColumnLayout{
            Layout.fillWidth: true
            spacing:root.height*0.05
            Layout.alignment: Qt.AlignHCenter
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: backgroudColor.color
                    hoverColor: backgroudColor.color
                    pressColor: backgroudColor.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: backgroudColor.open()
                }
                Label{
                    text: qsTr("Backgound Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: numBack.color
                    hoverColor: numBack.color
                    pressColor: numBack.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: numBack.open()
                }
                Label{
                    text: qsTr("Number Back. Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: periodColr.color
                    hoverColor: periodColr.color
                    pressColor: periodColr.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: periodColr.open()
                }
                Label{
                    text: qsTr("Periods Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: scoreColor.color
                    hoverColor: scoreColor.color
                    pressColor: scoreColor.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: scoreColor.open()
                }
                Label{
                    text: qsTr("Score Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
        }

        ColumnLayout{
            Layout.fillWidth: true
            spacing:  root.height*0.05
            Layout.alignment: Qt.AlignHCenter
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: textandborder.color
                    hoverColor: textandborder.color
                    pressColor: textandborder.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: textandborder.open()
                }
                Label{
                    text: qsTr("Text & Border Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: periodTime.color
                    hoverColor: periodTime.color
                    pressColor: periodTime.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: periodTime.open()
                }
                Label{
                    text: qsTr("Period Time Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: shorts.color
                    hoverColor: shorts.color
                    pressColor: shorts.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: shorts.open()
                }
                Label{
                    text: qsTr("Shots Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: ck.color
                    hoverColor: ck.color
                    pressColor: ck.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: ck.open()
                }
                Label{
                    text: qsTr("C/K Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
        }

        ColumnLayout{
            Layout.fillWidth: true
            spacing:root.height*0.05
            Layout.alignment: Qt.AlignHCenter
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: selected.color
                    hoverColor: selected.color
                    pressColor: selected.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: selected.open()
                }
                Label{
                    text: qsTr("Saves Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: saves.color
                    hoverColor: saves.color
                    pressColor: saves.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: saves.open()
                }
                Label{
                    text: qsTr("Selected Text Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: appBack.color
                    hoverColor: appBack.color
                    pressColor: appBack.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: appBack.open()
                }
                Label{
                    text: qsTr("Back. Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                CButton{
                    width: 60
                    height: 60
                    borderRadius: width/2
                    color: appMain.color
                    hoverColor: appMain.color
                    pressColor: appMain.color
                    borderColor: "#444b51"
                    borderWidth: 2
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: appMain.open()
                }
                Label{
                    text: qsTr("Border Color")
                    color:titleColor
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter
                    wrapMode: Text.WordWrap
                }
            }
        }
    }

    }
    CButton{
        width: 150
        height: 40
        borderRadius: 18
        color: homeColor
        hoverColor: homeColor
        pressColor: homeColor
        borderColor: titleColor
        buttonText: "Reset Default Color"
        innerText.color:titleColor
        anchors{
            left: parent.left
            bottom: parent.bottom
            bottomMargin: 15
            leftMargin: 20
        }
    }
    CButton{
        width: 150
        height: 40
        borderRadius: 18
        color: homeColor
        hoverColor: homeColor
        pressColor: homeColor
        borderColor: titleColor
        buttonText: "Save Color Settings"
        innerText.color:titleColor
        anchors{
            right: parent.right
            bottom: parent.bottom
            bottomMargin: 15
            rightMargin: 20
        }
    }

}
