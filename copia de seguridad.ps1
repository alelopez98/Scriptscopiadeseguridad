#Copia de seguridad: El script permite copiar un archivo o directorio en el lugar indicado creando una nueva carpeta en modo lectura.
function get-menu{
    #Esta función nos permitirá crear el menu
    clear
    Write-Host "-----Bienvenido al Script de copias de seguridad-----"
    write-host "Este script le permite crear copias de seguridad le archivos y programas."
    write-host "1.- Crear copia de seguridad de archivo/carpeta"
    write-host "2.- Salir del script"
    $respuesta = read-host "¿Que quiere hacer a continuación?"
    switch ($respuesta)
    {
        '1' {
            get-copiaseguridad   
        }
        '2' {
            write-host "Gracias por su visita"
            read-host "Presione cualquier boton para salir"
            exit
        }
        Default {
            write-host "Respuesta inválida"
            read-host "Pulse cualquier botón para continuar"
            get-menu
        }
    }
}
function get-copiaseguridad{
    #En esta función reside la tarea de copiar, pegar y convertir en solo lectura al archivo/carpeta.
    clear
    $ruta = read-host "Introduzca la ruta del archivo/carpeta"
    $destino = read-host "Introduzca la ruta donde quiere guardar la copia"
    #Añadimos la nueva carpeta a la variable del destino.
    $extra = "\Copias de seguridad"
    $rutafinal = $destino + $extra
    new-item -path $rutafinal -itemtype directory
    Copy-Item -path $ruta -destination $rutafinal -recurse
    #Convertimos la carpeta en solo lectura.
    attrib +r $rutafinal
    set-location $rutafinal
    $interior = Get-ChildItem
    #Convertimos el contenido de la carpeta en modo lectura.
    foreach ($i in $interior)
    {
        attrib +r $i
    }
    write-host "Copia completada" 
    #Tras completar el proceso, aparecerá un segundo menú para repetir el proceso si se desea.
    write-host "1.- Crear otra copia"
    write-host "2.- Salir"
    $respuesta2 = read-host "¿Que desea hacer a continuación?"
    switch ($respuesta2){
        '1'{
            get-copiaseguridad   
           }
        '2' {
            write-host "Gracias por su visita"
            exit
            }
        default{
            write-host "Respuesta inválida"
            read-host "Pulse cualquier botón para continuar"
            get-menu
        }
    }
    }
#Inicio del script, llamando al function.
get-menu
