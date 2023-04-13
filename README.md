### ES

# Bug Reporter
Una simple base de reportador de bugs para tu servidor de samp.

### Versiones
```
    v0.1    12/04/2023 - Creación y publicación del script.
```
### Descripción

Una base simple para que los usuarios de tu servidor puedan reportar bugs, los reportes serán guardados por default en la dirección `"Server/Logs/rbugs.log"`, aun que se puede cambiar desde el `#define PATH`, siendo una base puedes agregar más datos y variables para enriquerer el log y dar mas claridad al asunto, por a hora solo toma en cuenta *el nombre, id, fecha y hora, y la descripcion del bug*

### Uso y instalación
Antes que nada hay que tener las siguientes librerías [sscanf](https://github.com/Y-Less/sscanf/releases) y [zcmd](https://github.com/Southclaws/zcmd). Después de instalarlas, clonar o copiar el repositorio, entrar a `filterscripts` y compilar el archivo `rbug.pwn`, luego copiar todo y pegarlo en la raíz de tu servidor.

Para su uso es simple, se usa el comando `/rbug [breve descripción del bug]`.

### Advertencias

Dado que es un archivo `.log` que se guarda en el servidor es recomendable despues de un tiempo borrarlo o solo permitir el uso del comando a administradores de rango bajo o a jugadores con ciertas horas jugadas/nivel o podría poner inestable el servidor por una sobrecarga de escrituras al archivo.

### Créditos
> Chara420 y el extinto foro de pawnscript.
