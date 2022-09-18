import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "./Components"
ApplicationWindow {
    width: 1200
    height: 700
    visible: true
    title: qsTr("Game Soccer")
    property color homeColor: "#313a41"
    color: homeColor
    Loader{
        id:mainLoader
        anchors.fill: parent
        sourceComponent: responsiveLay
    }
    Component{
        id:responsiveLay
        ResponsiveLayout{

        }
    }
}
