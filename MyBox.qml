import QtQuick

Item {
    id: _item
    property color defaultColor: "grey"
    property color onColor: "green"
    property color offColor: "red"

    Rectangle {
        id: rectangle
        color: defaultColor
        radius: width
        anchors.fill: parent

    }
    states: [
        State {
            name: "On"

            PropertyChanges {
                target: rectangle
                color: onColor
            }
        },
        State {
            name: "Off"

            PropertyChanges {
                target: rectangle
                color: offColor
            }
        }
    ]

}
