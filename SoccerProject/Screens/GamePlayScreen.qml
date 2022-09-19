import QtQuick 2.15
import QtQuick.Controls 2.5
import "../"
import QtQuick.Layouts 1.3
import "../Components"
import QtQuick.Controls.Styles 1.4
Rectangle{
    color: homeColor
    property color layerColor: "#373e44"
    property color titleColor: "#ffffff"
    Timer {
           interval: 500
           running: true
           repeat: true
           onTriggered:{

               currentTime.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
           }
       }
    Timer {
           interval: 1000
           running: true
           repeat: true
           onTriggered:{
               indicatorButton.color = "Green";
               indicatorButton.color = "Red";
           }
       }
    Label{
        id:titleGame
        text: qsTr("The National Championship Game")
        color:titleColor
        font.pixelSize: 32
        font.family: "Times New Roman"
        anchors{
            topMargin: 5
            horizontalCenter: parent.horizontalCenter
        }

    }
    ColumnLayout{
        anchors{
            top: titleGame.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        Rectangle{
            color: layerColor
            Layout.preferredHeight: 200
            Layout.fillWidth: true
            visible: true
            radius: 12
            border.width:2
            border.color : "#444b51"

            CButton{
                width: 90
                height: 90
                borderRadius: 12
                color: "transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                borderColor: "transparent"
                borderWidth: 3
                sourceIcon:"qrc:/Assets/Images/pngegg(3).png"
                iconWidth:180
                iconHeight:180
                transform:  Matrix4x4 {
                    matrix: Qt.matrix4x4( -1, 0, 0, 90, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
                  }
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 50
                }
            }

            CButton{
                width: 90
                height: 90
                borderRadius: 12
                color: "transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                borderColor: "transparent"
                borderWidth: 3
                sourceIcon:"qrc:/Assets/Images/pngegg(3).png"
                iconWidth:180
                iconHeight:180
                anchors{
                    verticalCenter: parent.verticalCenter
                    right: parent.right
                    rightMargin: 50
                }
            }



            Column{
                spacing: 15
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 200
                }

                CButton{
                    id:gameTimer
                    width: 100
                    height: 40
                    borderRadius: 12
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: "#444b51"
                    buttonText: "Game/Clock"
                    innerText.color:titleColor
                    borderWidth: 3
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                }
                CButton{
                    id:setPeriodTime
                    width: 100
                    height: 40
                    borderRadius: 12
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: "#444b51"
                    buttonText: "Period Time"
                    innerText.color:titleColor
                    borderWidth: 3
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                }
                CButton{
                    id:timeOut
                    width: 100
                    height: 40
                    borderRadius: 12
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: "#444b51"
                    buttonText: "TimeOut"
                    innerText.color:titleColor
                    borderWidth: 3
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                }
            }
            Column{
                spacing: 15
                anchors{
                    verticalCenter: parent.verticalCenter
                    right: parent.right
                    rightMargin: 200
                }

                CButton{
                    id:startStop
                    width: 100
                    height: 40
                    borderRadius: 12
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: "#444b51"
                    buttonText: "Start/Stop"
                    innerText.color:titleColor
                    borderWidth: 3
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                }
                CButton{
                    id:setIntervalTime
                    width: 100
                    height: 40
                    borderRadius: 12
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: "#444b51"
                    buttonText: "Interval Time"
                    innerText.color:titleColor
                    borderWidth: 3
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                }
                CButton{
                    id:reset
                    width: 100
                    height: 40
                    borderRadius: 12
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: "#444b51"
                    buttonText: "Reset"
                    innerText.color:titleColor
                    borderWidth: 3
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                }
            }

            Rectangle{
                id:timeBox
                width: 650
                height: 200
                color: homeColor
                border.width: 3
                border.color: "#444b51"
                radius: 18
                anchors.centerIn: parent
                CButton{
                    id:indicatorButton
                    y:10
                    width: 20
                    height: 20
                    borderRadius: width/2
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: homeColor
                    Behavior on color {
                        SequentialAnimation {
                            loops: 1
                            ColorAnimation { from: "green"; to: "red"; duration: 500 }
                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                        }
                    }
                    anchors{
                        right: parent.right
                        rightMargin: 10
                    }
                }

                Label{
                    id:currentTime
                    anchors.centerIn: parent
                    color: "Red"
                    font.pointSize: 90
                    font.bold: true
                    font.letterSpacing: 0.5
                }

            }
        }


    RowLayout{
        Layout.fillHeight: true
        Layout.fillWidth: true
        spacing: 10
        Rectangle{
            id:speakerRec
            color: layerColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: true
            radius: 12
            border.width:2
            border.color : "#444b51"
            Label{
                id:gameName
                y:10
                text: qsTr("Home Team")
                color:titleColor
                font.pixelSize: 24
                font.family: "Times New Roman"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            /*Main Content Goes Here*/
            ColumnLayout{
                id:preiodBlock
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: gameName.bottom
                anchors.topMargin: 10
                Label{
                    text: qsTr("Periods")
                    color:titleColor
                    font.pixelSize: 20
                    Layout.alignment: Qt.AlignHCenter
                }
                RowLayout{
                    spacing: 10
                    CTextField{
                        width: 100
                        height: 90
                        font.pixelSize: 35
                        placeholderText: qsTr("00")
                        horizontalAlignment: TextInput.AlignHCenter
                        validator: IntValidator {
                            bottom: parseInt(0)
                            top: parseInt(99)
                        }
                    }
                    ColumnLayout{
                        spacing: 10
                        CButton{
                            width: 60
                            height: 40
                            borderRadius: 12
                            color: homeColor
                            hoverColor: homeColor
                            pressColor: homeColor
                            borderColor: "#444b51"
                            buttonText: "+1"
                            fontSize: 15
                            innerText.color:titleColor
                            borderWidth: 3
                            Behavior on color {
                                SequentialAnimation {
                                    loops: 1
                                    ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                    ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                }
                            }
                        }
                        CButton{
                            width: 60
                            height: 40
                            borderRadius: 12
                            color: homeColor
                            hoverColor: homeColor
                            pressColor: homeColor
                            borderColor: "#444b51"
                            buttonText: "-1"
                            fontSize: 15
                            innerText.color:titleColor
                            borderWidth: 3
                            Behavior on color {
                                SequentialAnimation {
                                    loops: 1
                                    ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                    ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                }
                            }
                        }
                    }
                }
            }




            /*Left Home Score*/

            ColumnLayout{
                id:homeScoreBox
               anchors{
                   left: parent.left
                   leftMargin: 100
                   verticalCenter: preiodBlock.verticalCenter
               }
                Label{
                    text: qsTr("Home Team Score")
                    color:titleColor
                    font.pixelSize: 20
                    Layout.alignment: Qt.AlignHCenter
                }
                RowLayout{
                    spacing: 10
                    CTextField{
                        width: 100
                        height: 90
                        font.pixelSize: 35
                        placeholderText: qsTr("00")
                        horizontalAlignment: TextInput.AlignHCenter
                        validator: IntValidator {
                            bottom: parseInt(0)
                            top: parseInt(99)
                        }
                    }
                    ColumnLayout{
                        spacing: 10
                        CButton{
                            width: 60
                            height: 40
                            borderRadius: 12
                            color: homeColor
                            hoverColor: homeColor
                            pressColor: homeColor
                            borderColor: "#444b51"
                            buttonText: "+1"
                            fontSize: 15
                            innerText.color:titleColor
                            borderWidth: 3
                            Behavior on color {
                                SequentialAnimation {
                                    loops: 1
                                    ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                    ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                }
                            }
                        }
                        CButton{
                            width: 60
                            height: 40
                            borderRadius: 12
                            color: homeColor
                            hoverColor: homeColor
                            pressColor: homeColor
                            borderColor: "#444b51"
                            buttonText: "-1"
                            fontSize: 15
                            innerText.color:titleColor
                            borderWidth: 3
                            Behavior on color {
                                SequentialAnimation {
                                    loops: 1
                                    ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                    ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                }
                            }
                        }
                    }
                }
            }


            CButton{
                width: 90
                height: 90
                borderRadius: 12
                color: "transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                borderColor: "transparent"
                borderWidth: 3
                sourceIcon:"qrc:/Assets/Images/pngegg(1).png"
                iconWidth:180
                iconHeight:180
                anchors{
                    verticalCenter: homeScoreBox.verticalCenter
                    left: homeScoreBox.right
                    leftMargin: 100
                }
            }


            CButton{
                width: 90
                height: 90
                borderRadius: 12
                color: "transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                borderColor: "transparent"
                borderWidth: 3
                sourceIcon:"qrc:/Assets/Images/pngegg(1).png"
                iconWidth:180
                iconHeight:180
                anchors{
                    verticalCenter: guestScoreBox.verticalCenter
                    right: guestScoreBox.left
                    rightMargin: 100
                }
            }







            /*Right Guest Score*/

            ColumnLayout{
                id:guestScoreBox
                anchors{
                    right: parent.right
                    rightMargin: 100
                    verticalCenter: preiodBlock.verticalCenter
                }

                Label{
                    text: qsTr("Guest Team Score")
                    color:titleColor
                    font.pixelSize: 20
                    Layout.alignment: Qt.AlignHCenter
                }
                RowLayout{
                    spacing: 10
                    CTextField{
                        width: 100
                        height: 90
                        font.pixelSize: 35
                        placeholderText: qsTr("00")
                        horizontalAlignment: TextInput.AlignHCenter
                        validator: IntValidator {
                            bottom: parseInt(0)
                            top: parseInt(99)
                        }
                    }
                    ColumnLayout{
                        spacing: 10
                        CButton{
                            width: 60
                            height: 40
                            borderRadius: 12
                            color: homeColor
                            hoverColor: homeColor
                            pressColor: homeColor
                            borderColor: "#444b51"
                            buttonText: "+1"
                            fontSize: 15
                            innerText.color:titleColor
                            borderWidth: 3
                            Behavior on color {
                                SequentialAnimation {
                                    loops: 1
                                    ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                    ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                }
                            }
                        }
                        CButton{
                            width: 60
                            height: 40
                            borderRadius: 12
                            color: homeColor
                            hoverColor: homeColor
                            pressColor: homeColor
                            borderColor: "#444b51"
                            buttonText: "-1"
                            fontSize: 15
                            innerText.color:titleColor
                            borderWidth: 3
                            Behavior on color {
                                SequentialAnimation {
                                    loops: 1
                                    ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                    ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                }
                            }
                        }
                    }
                }
            }



            RowLayout{
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 150
                RowLayout{
                    spacing: 20
                    ColumnLayout{
                        Label{
                            text: qsTr("Home Shots")
                            color:titleColor
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }
                        RowLayout{
                            spacing: 10
                            CTextField{
                                width: 100
                                height: 90
                                font.pixelSize: 35
                                placeholderText: qsTr("00")
                                horizontalAlignment: TextInput.AlignHCenter
                                validator: IntValidator {
                                    bottom: parseInt(0)
                                    top: parseInt(99)
                                }
                            }
                            ColumnLayout{
                                spacing: 10
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "+1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "-1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    ColumnLayout{
                        Label{
                            text: qsTr("Home C/K")
                            color:titleColor
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }
                        RowLayout{
                            spacing: 10
                            CTextField{
                                width: 100
                                height: 90
                                font.pixelSize: 35
                                placeholderText: qsTr("00")
                                horizontalAlignment: TextInput.AlignHCenter
                                validator: IntValidator {
                                    bottom: parseInt(0)
                                    top: parseInt(99)
                                }
                            }
                            ColumnLayout{
                                spacing: 10
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "+1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "-1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    ColumnLayout{
                        Label{
                            text: qsTr("Home Saves")
                            color:titleColor
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }
                        RowLayout{
                            spacing: 10
                            CTextField{
                                width: 100
                                height: 90
                                font.pixelSize: 35
                                placeholderText: qsTr("00")
                                horizontalAlignment: TextInput.AlignHCenter
                                validator: IntValidator {
                                    bottom: parseInt(0)
                                    top: parseInt(99)
                                }
                            }
                            ColumnLayout{
                                spacing: 10
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "+1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "-1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                RowLayout{
                    spacing: 20
                    ColumnLayout{
                        Label{
                            text: qsTr("Guest Shots")
                            color:titleColor
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }
                        RowLayout{
                            spacing: 10
                            ColumnLayout{
                                spacing: 10
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "+1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "-1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                            }

                            CTextField{
                                width: 100
                                height: 90
                                font.pixelSize: 35
                                placeholderText: qsTr("00")
                                horizontalAlignment: TextInput.AlignHCenter
                                validator: IntValidator {
                                    bottom: parseInt(0)
                                    top: parseInt(99)
                                }
                            }
                        }
                    }

                    ColumnLayout{
                        Label{
                            text: qsTr("Guest C/K")
                            color:titleColor
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }
                        RowLayout{
                            spacing: 10
                            ColumnLayout{
                                spacing: 10
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "+1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "-1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                            }

                            CTextField{
                                width: 100
                                height: 90
                                font.pixelSize: 35
                                placeholderText: qsTr("00")
                                horizontalAlignment: TextInput.AlignHCenter
                                validator: IntValidator {
                                    bottom: parseInt(0)
                                    top: parseInt(99)
                                }
                            }
                        }
                    }


                    ColumnLayout{
                        Label{
                            text: qsTr("Guest Saves")
                            color:titleColor
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }
                        RowLayout{
                            spacing: 10
                            ColumnLayout{
                                spacing: 10
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "+1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                                CButton{
                                    width: 60
                                    height: 40
                                    borderRadius: 12
                                    color: homeColor
                                    hoverColor: homeColor
                                    pressColor: homeColor
                                    borderColor: "#444b51"
                                    buttonText: "-1"
                                    fontSize: 15
                                    innerText.color:titleColor
                                    borderWidth: 3
                                    Behavior on color {
                                        SequentialAnimation {
                                            loops: 1
                                            ColorAnimation { from: "Green"; to: "red"; duration: 500 }
                                            ColorAnimation { from: "red"; to: "Green";  duration: 500 }
                                        }
                                    }
                                }
                            }

                            CTextField{
                                width: 100
                                height: 90
                                font.pixelSize: 35
                                placeholderText: qsTr("00")
                                horizontalAlignment: TextInput.AlignHCenter
                                validator: IntValidator {
                                    bottom: parseInt(0)
                                    top: parseInt(99)
                                }
                            }
                        }
                    }

                }

            }


            /*Main Content Goes Above*/











            IconButton{
                id:exit
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "Exit"
                innerText.color:titleColor
                fontSize: 10
                sourceIcon: "qrc:/Assets/Icons/sett.png"
                iconWidth: 20
                iconHeight: 20
                borderWidth: 3
                anchors{
                    right: parent.right
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 20
                }
            }
            IconButton{
                id:newGame
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "New Game"
                innerText.color:titleColor
                fontSize: 10
                sourceIcon: "qrc:/Assets/Icons/sett.png"
                iconWidth: 20
                iconHeight: 20
                borderWidth: 3
                anchors{
                    right: exit.left
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 10
                }
            }
            IconButton{
                id:options
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "Options"
                innerText.color:titleColor
                fontSize: 10
                sourceIcon: "qrc:/Assets/Icons/sett.png"
                iconWidth: 20
                iconHeight: 20
                borderWidth: 3
                anchors{
                    right: newGame.left
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 10
                }
            }
            IconButton{
                id:help
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "Help"
                innerText.color:titleColor
                fontSize: 10
                sourceIcon: "qrc:/Assets/Icons/sett.png"
                iconWidth: 20
                iconHeight: 20
                borderWidth: 3
                anchors{
                    right: options.left
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 10
                }
            }

            CButton{
                id:stopGame
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "Stop Game"
                borderWidth: 3
                innerText.color:titleColor
                anchors{
                    left: parent.left
                    bottom: parent.bottom
                    bottomMargin: 15
                    leftMargin: 20
                }
            }
            CButton{
                id:buzzer
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "Buzzer"
                borderWidth: 3
                innerText.color:titleColor
                anchors{
                    left: stopGame.right
                    bottom: parent.bottom
                    bottomMargin: 15
                    leftMargin: 20
                }
            }
            CButton{
                id:completeGame
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: "#444b51"
                buttonText: "Game Over"
                borderWidth: 3
                innerText.color:titleColor
                anchors{
                    left: buzzer.right
                    bottom: parent.bottom
                    bottomMargin: 15
                    leftMargin: 20
                }
            }

        }

    }
    }
}
