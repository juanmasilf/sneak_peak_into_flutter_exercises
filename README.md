# Un vistazo a Flutter - Ejercicios

## Ejercicio 1

Bienvenido al primer ejercicio del taller Un Vistazo a Flutter, en este ejercicio buscaremos dar nuestros primeros pasos en Flutter descubriendo Widget nuevos y jugando un poco con el manejador de estados nativo de Flutter.

En este ejercicio estaremos creando una aplicación para registrar Todos, al final de este ejercicio tendremos una aplicación como la siguiente:

![ezgif com-video-to-gif-2](https://github.com/juanmasilf/sneak_peak_into_flutter_exercises/assets/48691795/fbf5dc3f-bee4-4e9d-9ae8-662c94ed35a7)

Las funcionalidades requeridas para completar este ejercicio son:

- Crear una lista de elementos la cual se pueda hacer scroll y los elementos tengan el texto “Todo” seguido del número de Todo correspondiente. Mirar widgets [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html) y [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html)
- Agregar un botón para agregar un nuevo elemento a la lista. El nuevo elemento debe tener el número siguiente al agregado anteriormente. Mirar el widget [FloatingActionButton](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html).
- Agregar un botón para eliminar el último elemento agregado en la lista. Mirar el widget [FloatingActionButton](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html).
- Los botones para agregar y borrar elementos, deben estar alineados horizontalmente y un espacio de 16 pixeles entre ellos. Mirar el widget [Row](https://api.flutter.dev/flutter/widgets/Row-class.html), [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) y [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)

## Ejercicio 2

En este segundo ejercicio seguiremos trabajando sobre nuestra aplicación de Todos. El ejercicio tratará en probar el agregar, manejar y utilizar paquetes dentro de Flutter.

Al terminar este ejercicio nuestra aplicación lucirá de la siguiente manera:

![ezgif com-video-to-gif-3](https://github.com/juanmasilf/sneak_peak_into_flutter_exercises/assets/48691795/78b90780-4c3b-4534-8a2b-0116aeec37a2)

La consigna del ejercicio es la siguiente:

- Agregar una animación a los Todos que se agregan a la lista. Para esto se deberá utilizar el paquete [animate_do](https://pub.dev/packages/animate_do).
- Agregar una descripción a nuestro Todo. La descripción deberá ser un frase random que contenga 10 palabras. Para poder generar esta descripción se deberá utilizar el paquete [word_generator](https://pub.dev/packages/word_generator). Es recomendable generar una clase para contener toda la información relacionada a un Todo.

## Ejercicio 3

Para nuestro último ejercicio aplicaremos los conocimientos adquiridos sobre la navegación en Flutter. Crearemos páginas nuevas y navegaremos a ellas pasándole información para poder construirse.

Al terminar este ejercicio nuestra aplicación lucirá de la siguiente manera:

![ezgif com-video-to-gif-4](https://github.com/juanmasilf/sneak_peak_into_flutter_exercises/assets/48691795/eb908787-092f-4e0f-9cdd-45d0535e6d64)

- El Todo deberá contener una url de imagen random como nuevo atributo. Para poder obtener imagen random se deberá utilizar el siguiente url: [https://loremflickr.com/320/240/{id](https://loremflickr.com/320/240/%7Bid)} Se deberá cambiar {id} por el número de Todo correspondiente. La imagen deberá verse en la tarjeta de Todo. Mirar los widgets [CircleAvatar](https://api.flutter.dev/flutter/material/CircleAvatar-class.html), [NetworkImage](https://api.flutter.dev/flutter/painting/NetworkImage-class.html) y [Image](https://docs.flutter.dev/cookbook/images/network-image)
- Se deberá crear una nueva página donde se mostrarán los detalles de un Todo. La pantalla debe desplegar la imagen, el título y la descripción del Todo.
- Se deberá poder acceder a la pantalla de detalles de un Todo, al presionar una tarjeta de Todo de la lista. Mirar [Navegar entre pantallas](https://esflutter.dev/docs/cookbook/navigation/navigation-basics).

## Bonus track

Si te gusto el taller y quieres seguir descubriendo y jugando con Flutter te recomendamos que realices los CodeLabs de Flutter, donde aprendes muchísimas cosas y están muy bien explicados

[Flutter Codelabs](https://docs.flutter.dev/codelabs)

Gracias por participar!!!

Mati y Juanma
