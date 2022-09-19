import QtQuick 2.0
import QtQuick.Controls 1.5
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4
TextField {
    id: root
    property color checkedColor: "#313a41"
    font.family: "Arial"
    font.pixelSize: 15
    font.weight: Font.Thin
    style: TextFieldStyle {
        textColor: "white"
        placeholderTextColor : "grey"
        background: Rectangle {
            implicitWidth: root.width
            implicitHeight: root.height
            radius: 8
            color: "#313a41"
            border.color: "#444b51"
            border.width: 3
            opacity: root.enabled ? 1 : 0.7
        }
    }
}
