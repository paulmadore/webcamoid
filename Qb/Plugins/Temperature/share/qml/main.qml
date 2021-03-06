/* Webcamoid, webcam capture application.
 * Copyright (C) 2011-2015  Gonzalo Exequiel Pedone
 *
 * Webcamod is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Webcamod is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Webcamod. If not, see <http://www.gnu.org/licenses/>.
 *
 * Email   : hipersayan DOT x AT gmail DOT com
 * Web-Site: http://github.com/hipersayanX/webcamoid
 */

import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

GridLayout {
    columns: 3

    Label {
        text: qsTr("Temperature")
    }
    Slider {
        id: sldTemperature
        value: Temperature.temperature
        stepSize: 1
        minimumValue: 1000
        maximumValue: 40000

        onValueChanged: Temperature.temperature = value
    }
    SpinBox {
        value: sldTemperature.value
        maximumValue: sldTemperature.maximumValue
        stepSize: sldTemperature.stepSize

        onValueChanged: sldTemperature.value = value
    }
}
