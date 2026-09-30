import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Noru Mega"

    Rectangle {
        anchors.fill: parent
        color: "#202020"

        Rectangle {
            id: hud

            anchors {
                top: parent.top
                left: parent.left
                right: parent.right
            }

            height: 40
            color: "#2b2b2b"

            RowLayout {
                anchors.fill: parent
                anchors.margins: 4
                spacing: 6

                Button {
                    text: "Mega"
                    Layout.preferredWidth: 80
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "transparent"

                    ListView {
                        anchors.fill: parent
                        orientation: ListView.Horizontal
                        spacing: 4

                        model: [
                            "Nimbus",
                            "nCalc",
                            "nClock",
                            "AquaPaint"
                        ]

                        delegate: Button {
                            text: modelData
                            height: 30
                        }
                    }
                }

                Row {
                    spacing: 4

                    Rectangle {
                        width: 24
                        height: 24
                        radius: 4
                        color: "#4caf50"

                        Text {
                            anchors.centerIn: parent
                            text: "N"
                            color: "white"
                        }
                    }

                    Rectangle {
                        width: 24
                        height: 24
                        radius: 4
                        color: "#2196f3"

                        Text {
                            anchors.centerIn: parent
                            text: "B"
                            color: "white"
                        }
                    }

                    Rectangle {
                        width: 24
                        height: 24
                        radius: 4
                        color: "#ff9800"

                        Text {
                            anchors.centerIn: parent
                            text: "W"
                            color: "white"
                        }
                    }
                }

                Label {
                    color: "white"

                    text: Qt.formatDateTime(
                              new Date(),
                              "hh:mm:ss"
                          )

                    Timer {
                        running: true
                        repeat: true
                        interval: 1000
                        onTriggered: parent.text =
                            Qt.formatDateTime(
                                new Date(),
                                "hh:mm:ss"
                            )
                    }
                }
            }
        }

        Text {
            anchors.centerIn: parent
            text: "Noru Mega Desktop"
            color: "white"
            font.pixelSize: 32
        }
    }
}
