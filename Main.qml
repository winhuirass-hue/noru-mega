import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: window

    visible: true
    width: 1280
    height: 720
    minimumWidth: 900
    minimumHeight: 520
    title: "Noru Mega"
    color: "#101217"

    property string currentApp: "Nimbus"

    Rectangle {
        anchors.fill: parent
        color: "#101217"

        // Desktop
        Column {
            id: desktopIcons
            anchors.left: parent.left
            anchors.top: topPanel.bottom
            anchors.leftMargin: 18
            anchors.topMargin: 24
            spacing: 22

            DesktopIcon {
                icon: "⌂"
                label: "Home"
            }

            DesktopIcon {
                icon: "▣"
                label: "Trash"
            }

            DesktopIcon {
                icon: "▰"
                label: "This PC"
            }

            DesktopIcon {
                icon: "◎"
                label: "Network"
            }
        }

        // Center branding
        Column {
            anchors.centerIn: parent
            spacing: 12

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "N"
                color: "white"
                font.pixelSize: 82
                font.bold: true

                Rectangle {
                    width: 15
                    height: 15
                    radius: 3
                    color: "#1976ff"
                    anchors.left: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 3
                }
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "noru-mega"
                color: "#f2f4f8"
                font.pixelSize: 30
                font.letterSpacing: 1.5
            }
        }

        // Top panel
        Rectangle {
            id: topPanel
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: 48
            color: "#171a21"
            border.color: "#272c35"
            border.width: 1

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 16
                anchors.rightMargin: 16
                spacing: 8

                RowLayout {
                    Layout.preferredWidth: 160
                    spacing: 10

                    Text {
                        text: "N"
                        color: "white"
                        font.pixelSize: 25
                        font.bold: true
                    }

                    Label {
                        text: "Noru Mega"
                        color: "#eef1f5"
                        font.pixelSize: 16
                    }
                }

                Repeater {
                    model: [
                        { name: "Nimbus", icon: "■" },
                        { name: "nCalc", icon: "▦" },
                        { name: "nClock", icon: "◷" },
                        { name: "AquaPaint", icon: "╱" }
                    ]

                    delegate: Rectangle {
                        Layout.preferredHeight: 36
                        Layout.preferredWidth: modelData.name === "AquaPaint" ? 130 : 112
                        radius: 10
                        color: window.currentApp === modelData.name
                               ? "#18395f"
                               : "#20252e"

                        Row {
                            anchors.centerIn: parent
                            spacing: 9

                            Text {
                                text: modelData.icon
                                color: window.currentApp === modelData.name
                                       ? "#65b5ff"
                                       : "#b8c1cc"
                                font.pixelSize: 18
                            }

                            Text {
                                text: modelData.name
                                color: "#eef1f5"
                                font.pixelSize: 14
                            }
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: window.currentApp = modelData.name
                        }
                    }
                }

                Item {
                    Layout.fillWidth: true
                }

                Repeater {
                    model: [
                        { letter: "N", color: "#22c55e" },
                        { letter: "B", color: "#2196f3" },
                        { letter: "W", color: "#f59e0b" }
                    ]

                    delegate: Rectangle {
                        Layout.preferredWidth: 25
                        Layout.preferredHeight: 25
                        radius: 5
                        color: modelData.color

                        Text {
                            anchors.centerIn: parent
                            text: modelData.letter
                            color: "white"
                            font.pixelSize: 14
                            font.bold: true
                        }
                    }
                }

                Label {
                    id: clock
                    Layout.preferredWidth: 72
                    horizontalAlignment: Text.AlignRight
                    text: Qt.formatDateTime(new Date(), "hh:mm:ss")
                    color: "#e6eaf0"
                    font.pixelSize: 14

                    Timer {
                        interval: 1000
                        running: true
                        repeat: true
                        onTriggered: clock.text =
                            Qt.formatDateTime(new Date(), "hh:mm:ss")
                    }
                }
            }
        }

        // Workspace indicator
        Row {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 18
            anchors.bottomMargin: 16
            spacing: 7

            Repeater {
                model: 5

                Rectangle {
                    width: index === 1 ? 9 : 7
                    height: index === 1 ? 9 : 7
                    radius: 5
                    color: index === 1 ? "#2f9cff" : "#58616d"
                }
            }
        }

        // Decorative corner
        Item {
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            width: 180
            height: 120
            clip: true

            Rectangle {
                width: 220
                height: 28
                rotation: -45
                x: 78
                y: 92
                color: "#172d55"
            }

            Rectangle {
                width: 180
                height: 5
                rotation: -45
                x: 108
                y: 91
                color: "#1976ff"
            }
        }
    }

    component DesktopIcon: Column {
        width: 64
        spacing: 5

        property string icon
        property string label

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: parent.icon
            color: "#d9e1ea"
            font.pixelSize: 31
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: parent.label
            color: "#e7ebf0"
            font.pixelSize: 13
        }
    }
}
