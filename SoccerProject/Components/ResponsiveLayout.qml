import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Item {
    anchors.fill: parent
    property color layerColor: "#373e44"
    property color titleColor: "#ffffff"
    Timer {
           interval: 500
           running: true
           repeat: true
           onTriggered: currentTime.text = Qt.formatDateTime(new Date(), "hh:mm:ss AP")
       }
    ColumnLayout{
        spacing: 0
        anchors.fill: parent
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: 60
            color: layerColor
            border.width:2
            border.color : "#444b51"
            Image{
                id:logo
                source: "qrc:/Assets/Images/logo.png"
                sourceSize: Qt.size(150,150)
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        Qt.openUrlExternally("https://linux.thearticleof.com")
                    }
                }
            }

            CButton{
                id:homeButton
                color: "transparent"
                borderColor:"transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                width: 40
                height: 40
                sourceIcon: "qrc:/Assets/Icons/home.png"
                iconWidth: 28
                iconHeight: 28
                anchors{
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }
                onClicked: {
                   mainStackView.pop()
                }
            }
            CButton{
                id:updateButton
                color: "transparent"
                borderColor:"transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                width: 40
                height: 40
                sourceIcon: "qrc:/Assets/Icons/update.png"
                iconWidth: 32
                iconHeight: 32
                anchors{
                    right: homeButton.left
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }
                onClicked: {
                    mainStackView.push("qrc:/Screens/Update.qml")
                }
            }
            CButton{
                id:back
                color: "transparent"
                borderColor:"transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                width: 40
                height: 40
                sourceIcon: "qrc:/Assets/Icons/icons8-back-64.png"
                iconWidth: 40
                iconHeight: 40
                visible: mainStackView.depth>1
                anchors{
                    right: updateButton.left
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }
                onClicked: {
                       mainStackView.pop()
                }
            }

            Label{
                id:currentTime
                color:titleColor
                font.pixelSize: 18
                font.family: "Times New Roman"
                anchors.centerIn: parent

            }
        }
        CStackView{
            id:mainStackView
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

}
