import QtQuick 2.15
import QtQuick.Layouts 1.11

import Controls 1.0

FloatingPane {
    id: root

    property var colors: null

    clip: true
    padding: 4
    anchors.rightMargin: 0


    ColumnLayout {
        anchors.fill: parent

        Grid {
            id: grid

            spacing: 5
            x: spacing
            y: spacing
            rows: 4
            columns: 6

            Repeater {
                model: root.colors

                Rectangle {
                    id: cell
                    width: root.width / grid.columns - grid.spacing * (grid.columns+1) / grid.columns
                    height: root.height / grid.rows - grid.spacing * (grid.rows+1) / grid.rows
                    color: Qt.rgba(modelData.r, modelData.g, modelData.b, 1.0)
                }

            }
        }
    }

}
