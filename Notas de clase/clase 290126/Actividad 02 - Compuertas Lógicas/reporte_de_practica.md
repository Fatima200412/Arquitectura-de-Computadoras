# Arquitectura de Computadoras

## Actividad 02: Implementación de Compuertas Lógicas  
**Alumno:** Fátima Lisette Hernández Barajas  

---

## Investigación de introducción

https://drive.google.com/file/d/1n5ousj-5cvhIsLXC8eOXzwv3r0EtKr5i/view?usp=sharing


---

## Desarrollo

El objetivo de esta práctica es crear un proyecto en modelsim FPGA para implementar dentro de un solo módulo y en un archivo verilog, las compuertas lógicas AND, NAND, OR, NOR, NOT, XOR, Y XNOR.
Todas las compuertas serán implementadas a nivel de un bit, con señales binarias (0 y 1).
---

 ## implementacion
El primer paso para crear el módulo fue definir las entradas y salidas I/O del sistema. Se utilizaran dos entradas de un bit denominadas A y B y siete salidas (correspondientes a las 7 compuertas antes mencionadas), la compuerta NOT solo utiliza la entrada A mientras que las demás compuertas utilizan ambas entradas, de acuerdo a su funcionamiento lógico.

Posteriormente, sabiendo en qué consiste la actividad, escribí el código en verilog con ayuda de visual studio  y lo compile en modelsim para verificar que no existiera algún error en la sintaxis.   
para comprobar el funcionamiento del módulo, utilice la ventana wave de modelsim, ahí force los valores de las entradas para ver sus comportamientos en cada una de las compuertas probando todas las combinaciones posibles(00,01,10,11).
Después de asignarles estos valores a las entradas ejecute la simulación y pude visualizar gráficamente el comportamiento de las salidas correspondientes a cada compuerta verificando que coincidieran con sus tablas de verdad, las salidas cambian de acuerdo a los valores de las entradas.


---

## Conclusión

Con esta práctica, logre familiarizarme con el entorno del software de modelsim, abarcando desde la creación y configuración de un proyecto, hasta la compilación, la simulación y visualización de resultados del funcionamiento  de las compuertas lógicas mediante la ventana wave.
El uso de esta herramienta me permitió analizar gráficamente el comportamiento de las entradas y salidas del módulo implementado.

Así mismo, trabajé con la sintaxis del lenguaje de descripción de hardware verilog para la parte del código, lo que me permitió comprender cómo se definen las entradas, salidas y operaciones lógicas dentro de un módulo .


---
## Bibliografía
Schneider, J., & Smalley, I. (2025, noviembre 27). ¿Qué es una matriz de puertas programables en campo (FPGA)? Ibm.com. https://www.ibm.com/mx-es/think/topics/field-programmable-gate-arrays
Compuertas lógicas – Sistemas Digitales. (s/f). Unam.mx. https://virtual.cuautitlan.unam.mx/intar/sistdig/compuertas-logicas/
Logic Gates With NPN transistors. (2014, marzo 23). Instructables. https://www.instructables.com/Logic-Gates-with-NPN-transistors/


