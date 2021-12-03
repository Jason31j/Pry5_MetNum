Documentación proyecto #5: solución de ecuaciones diferenciales ordinarias

En el repositorio de GitHub habrá 3 archivos que corresponden a los scripts  necesarios para ejecutar el programa completamente, los nombres de estos archivos son:
•	Main.m: este es el archivo principal el cual invocaremos para iniciar el programa y a través de este ingresaremos algunos datos necesarios para la ejecución de los métodos que luego serán llamados dependiendo de la opción escogida.
Para invocarla necesitaremos:
o	La ecuación diferencial definida como una función dentro de Octave.
Para iniciar el programa usaremos la sintaxis main(f), siendo f la función previamente definida.
Nota: recordar definir la función con las dos “variables”, sin importar si participan las dos o no.
•	RK4.m: este archivo contiene el código necesario para resolver la ecuación diferencial mediante el método de Runge Kutta, será llamado automáticamente si en main.m elegimos el este método.
•	EuMe: este archivo contiene el código necesario para resolver la ecuación diferencial mediante el método de Euler mejorado, será llamado automáticamente si en main.m elegimos el este método.
