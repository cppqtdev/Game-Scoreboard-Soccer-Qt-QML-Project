import QtQuick 2.15
import QtQuick.Controls 2.5
import "../"
import QtQuick.Layouts 1.3
import "../Components"
Rectangle{
    color: homeColor
    property color layerColor: "#373e44"
    property color titleColor: "#ffffff"
    Label{
        y:10
        text: qsTr("Welcome To Soccer Scoreboard")
        color:titleColor
        font.pixelSize: 32
        font.family: "Times New Roman"
        anchors{
            horizontalCenter: parent.horizontalCenter
        }

    }

    RowLayout{
        anchors.centerIn: parent
        width: parent.width*0.98
        height: parent.height*0.8
        spacing: 30
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
                text: qsTr("Home Team Settings")
                color:titleColor
                font.pixelSize: 32
                font.family: "Times New Roman"
                anchors{
                    left: parent.left
                    top: parent.top
                    topMargin: 20
                    leftMargin: 20
                }

            }

            Image {
                id: speaker
                source: "qrc:/Assets/Images/undraw_goal_0v5v-transformed.png"
                anchors.centerIn: parent
                sourceSize: Qt.size(speakerRec.width*0.9,speakerRec.height*0.9)
            }
            IconButton{
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: titleColor
                buttonText: "Settings"
                innerText.color:titleColor
                fontSize: 10
                sourceIcon: "qrc:/Assets/Icons/sett.png"
                iconWidth: 20
                iconHeight: 20
                anchors{
                    right: parent.right
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 20
                }
                onClicked:  mainStackView.push("qrc:/Screens/HomeTeamConfiguration.qml")
            }

            CButton{
                width: 100
                height: 40
                borderRadius: 18
                color: homeColor
                hoverColor: homeColor
                pressColor: homeColor
                borderColor: titleColor
                buttonText: "Start Game"
                innerText.color:titleColor
                anchors{
                    left: parent.left
                    bottom: parent.bottom
                    bottomMargin: 15
                    leftMargin: 20
                }
                 onClicked:  mainStackView.push("qrc:/Screens/GamePlayScreen.qml")

            }

        }
        Rectangle{
            color: layerColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: true
            radius: 12
            border.width:2
            border.color : "#444b51"
            Label{
                text: qsTr("Guest Team Settings")
                font.family: "Times New Roman"
                color:titleColor
                font.pixelSize: 32
                anchors{
                    left: parent.left
                    top: parent.top
                    topMargin: 20
                    leftMargin: 20
                }

            }
            Image {
                id: dongle
                source: "qrc:/Assets/Images/undraw_goal_0v5v-transformed.png"
                anchors.centerIn: parent
                sourceSize: Qt.size(speakerRec.width*0.9,speakerRec.height*0.9)
            }
                IconButton{
                    width: 100
                    height: 40
                    borderRadius: 18
                    color: homeColor
                    hoverColor: homeColor
                    pressColor: homeColor
                    borderColor: titleColor
                    buttonText: "Settings"
                    innerText.color:titleColor
                    fontSize: 10
                    sourceIcon: "qrc:/Assets/Icons/sett.png"
                    iconWidth: 20
                    iconHeight: 20
                    anchors{
                        right: parent.right
                        bottom: parent.bottom
                        bottomMargin: 15
                        rightMargin: 20
                    }
                    onClicked:  mainStackView.push("qrc:/Screens/GuestTeamConfiguration.qml")
                }

             CButton{
                 width: 100
                 height: 40
                 borderRadius: 18
                 color: homeColor
                 hoverColor: homeColor
                 pressColor: homeColor
                 borderColor: titleColor
                 buttonText: "Start Game"
                 innerText.color:titleColor
                 anchors{
                     left: parent.left
                     bottom: parent.bottom
                     bottomMargin: 15
                     leftMargin: 20
                 }
                  onClicked:  mainStackView.push("qrc:/Screens/GamePlayScreen.qml")

             }
        }
    }
}
