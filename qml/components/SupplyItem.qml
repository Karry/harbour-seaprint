import QtQuick 2.6
import Sailfish.Silica 1.0
import "../components"

    Row
    {
        id: item
        property var color: "white"
        property int level: 100
        property int high_level: 100
        property int low_level: 0
        property string name: qsTr("Unknown supply")
        property string type: qsTr("Unknown type")

        spacing: Theme.paddingMedium
        bottomPadding: Theme.paddingMedium

        CylinderGraph
        {
            anchors.verticalCenter: parent.verticalCenter
            color: parent.color
            value: (level/high_level)
        }
        Label
        {
            anchors.verticalCenter: parent.verticalCenter
            width: Theme.itemSizeExtraSmall
            text: ""+(100*level/high_level)+"%"
            color: Theme.highlightColor
            font.pixelSize: Theme.fontSizeExtraSmall
        }
        Column
        {
            anchors.verticalCenter: parent.verticalCenter
            Label
            {
                text: name
                font.pixelSize: Theme.fontSizeExtraSmall
            }
            Label
            {
                text: type
                font.pixelSize: Theme.fontSizeExtraSmall
                color: Theme.secondaryColor
            }
        }
    }


