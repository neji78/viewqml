import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4
import QtQuick.Particles 2.0

Item {

    Rectangle {
        color: "#F9A72B"
        anchors.fill: parent
    }

    ParticleSystem { id: particles }

    ImageParticle {
        system: particles
        source: "qrc:/pic/src/cloud.svg"
        alpha: 0.4
        alphaVariation: 0.2
    }

    Emitter {
        system: particles
        emitRate: 1
        lifeSpan: 70000
        velocity: PointDirection { x: -10; xVariation: -5; }
        size: 20
        sizeVariation: 10
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 5
    }
}
