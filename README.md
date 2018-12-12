# Script Copia de Seguridad
## Este es un script de como hacer una copia de seguridad utilizando powershell

- Presentación
- Descripción del script
- Solución del script
- Referencias

### Presentación

Buenas, Somos Alejandro López, Antonio Jesus Holguin y Jairo Verdugo, alumnos de 1ºASIR y hemos creado está pagina para subir las explicaciones de algunos scripts que hemos realizado.

### Descripcion

El script que vamos a enseñar permite al usuario copiar carpetas y archivos para en caso de perdida de la carpeta poder recuperarla , tambien al recuperar los archivos podemos hacer que sean solo lectura.

### Solución del script

El script se fundamenta en dos function (Get-Menu y Get-copiasdeseguridad).

En el menú se nos preguntará que queremos hacer, teniendo la opción de ejecutar la base del script o salir de él.  A la hora de crear las copias de seguridad se preguntará al usuario la ruta del archivo/carpeta que desea copiar y el destino donde la quiere copiar.

Se añadirá una nueva carpeta al destino llamada "Copias de seguridad" donde se introducirá el archivo/carpeta. Además todo el contenido de dicha nueva carpeta se convertirá en solo lectura.

Tras finalizar el script se preguntará al usuario si quiere hacer otra copia o quiere salir del script.
[Solución Script](https://github.com/alelopez98/Scriptscopiadeseguridad/blob/master/copia%20de%20seguridad.ps1)


### Referencias

Las referencias que hemos usados son:

[Comandos Powershell](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/add-type?view=powershell-6)
