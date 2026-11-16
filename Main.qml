import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyBox {
        id: myBox
        x: 220
        y: 140
        width: 200
        height: 200
        opacity: 1
        clip: false

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            onClicked: {
                if (myBox.state === "On") {
                    myBox.state = "Off"
                } else {
                    myBox.state = "On"
                }
            }
        }
    }

}
