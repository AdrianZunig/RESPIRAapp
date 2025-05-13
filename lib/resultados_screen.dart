import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ResultadosScreen extends StatefulWidget {
  @override
  _resultadosScreenState createState() {
    return _resultadosScreenState();
  }
}

class _resultadosScreenState extends State<ResultadosScreen> {
  // Datos de ejemplo: días del mes y estados de ánimo (1-5 escala)
  final List<Map<String, dynamic>> moodData = [
    {'day': '1', 'mood': 3},
    {'day': '5', 'mood': 4},
    {'day': '10', 'mood': 2},
  ];
  // DISEÑO Y COMPONENTES
  @override
  Widget build(BuildContext context) {
    // PANTALLA
    return Container(
      // colocar componetes en columna
      child: Column(
        children: <Widget>[
          // Barra de la app
          AppBar(
            title: Text(
              'Resultados', // Título de la barra de la aplicación
              style: TextStyle(
                fontSize: 25, // tamaño del texto
                color: Colors.black, // color del text-appBarr
                fontWeight: FontWeight.w600, // negrita
                fontStyle: FontStyle.italic, // tipografia
              ),
            ),
            centerTitle: true, // centrar titulo
            automaticallyImplyLeading: true, // Habilita el botón de retroceso
          ),
          SizedBox(height: 50), // espacio entre campos
          Padding(
            padding: const EdgeInsets.all(20), // margen
            child: Column(
              children: <Widget>[
                Text(
                  'Evolución de mi estado de ánimo',
                  style: TextStyle(
                    fontSize: 22, // tamaño texto
                  ),
                ),
                SizedBox(height: 40), // espacio entre campos
                // CONTENEDOR 1 para la gráfica
                Container(
                  height: 300, // alto del greafico
                  padding: EdgeInsets.all(16), // margen
                  child: LineChart(
                    LineChartData(
                      // Configuración de la cuadrícula
                      gridData: FlGridData(
                        show: true, // cuadricula visible
                        drawVerticalLine: true, // lineas verticales visibles
                        // color de lineas horizontales
                        getDrawingHorizontalLine: (value) {
                          return FlLine(color: Colors.grey.withOpacity(0.3));
                        },
                        // color lineas verticales
                        getDrawingVerticalLine: (value) {
                          return FlLine(color: Colors.grey.withOpacity(0.3));
                        },
                      ),
                      // Configuración de los títulos
                      titlesData: FlTitlesData(
                        show: true, // visivilidad de la escala
                        // ocultar escala
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        // escala en la parte horizontal
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 30,
                            interval: 1,
                            getTitlesWidget: (value, meta) {
                              // Mostrar los días en el eje X
                              if (value.toInt() < moodData.length) {
                                return Text(moodData[value.toInt()]['day']);
                              }
                              return Text('');
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              // Mostrar escala de ánimo (1-5) en el eje Y
                              return Text(value.toInt().toString());
                            },
                          ),
                        ),
                      ),
                      // Configuración del borde
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      // Líneas mínimas y máximas (rango del gráfico)
                      minX: 0,
                      maxX: (moodData.length - 1).toDouble(),
                      minY: 0,
                      maxY: 5,
                      // Configuración de las líneas de la gráfica
                      lineBarsData: [
                        LineChartBarData(
                          spots:
                              moodData.asMap().entries.map((entry) {
                                // Convertir datos a puntos en la gráfica
                                return FlSpot(
                                  entry.key
                                      .toDouble(), // Posición X (índice del día)
                                  entry.value['mood']
                                      .toDouble(), // Posición Y (estado de ánimo)
                                );
                              }).toList(),
                          isCurved: true, // Hacer la línea curva
                          color: Colors.blue, // Color de la línea
                          barWidth: 3, // Ancho de la línea
                          isStrokeCapRound: true, // Extremos redondeados
                          dotData: FlDotData(
                            show: true, // Mostrar puntos en cada dato
                          ),
                          belowBarData: BarAreaData(
                            show: true, // Mostrar área bajo la curva
                            color: Colors.blue.withOpacity(0.1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // CONTENEDOR 2
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Leyenda explicativa
                  child: Text(
                    'Escala de ánimo: 1=Muy bajo, 5=Muy alto',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
