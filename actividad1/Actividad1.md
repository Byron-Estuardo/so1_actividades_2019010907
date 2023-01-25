# Tipos de Kernel y sus diferencias

## ¿Cuáles son los tipos de Kernel?

Si varios procesos se ejecutan en un kernel al mismo tiempo, existen los llamados multitasking kernel. Con la incorporación de la gestión de accesos, se convierte en un sistema multiusuario en el que varios usuarios pueden trabajar simultáneamente. La autenticación la realiza el kernel, que puede asignar o desvincular los procesos llamados.

**Tipos de Kernel:**
Existen diferentes tipos de kernel para diferentes sistemas operativos y dispositivos finales. Conforme a sus características, pueden dividirse en tres grupos:

 - **Kernel monolítico:** Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.
 - **Microkernel:** El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.
 - **Kernel híbrido:** La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

## User y Kernel Mode

**User Mode:** cuando un programa se inicia en un sistema operativo, digamos Windows, luego inicia el programa en modo de usuario. Y cuando un programa en modo usuario solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales (espacio de direcciones para ese proceso). Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema.

**Kernel Mode:** El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también administra la interacción entre el software y el hardware de la aplicación. . Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario.
