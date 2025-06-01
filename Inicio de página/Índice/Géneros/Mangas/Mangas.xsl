<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>

<xsl:template match="/">
<html>
    <head>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <title>Mangas - BiblioNexo</title>
        <link rel="icon" href="../../../../Íconos/slimes.ico"></link>
        <link rel="stylesheet" href="Mangas.css"></link>
    </head>
    <body>
    
    <!-- Navbar -->
    <nav class="Navbar">
        <h1><a class="titulo" href="../../../../index.html" >BiblioNexo</a></h1>
        <a href ="../../Índice - BiblioNexo.html">Ver todos los libros</a>
        <a href="../../../../Formularios y más/Iniciar o crear cuenta/Iniciar sección  - BiblioNexo.html">Iniciar sección</a>
        <a href="../../../../Formularios y más/Iniciar o crear cuenta/Crear cuenta  - BiblioNexo.html">Crear una cuenta</a>
        <a href="../../../../Formularios y más/proceso de pago/Proceso de pago - BiblioNexo.html">Proceso de pago <img src="../../../../Íconos/tienda.png" alt="No se pudo cargar la imagen"></img></a>
    </nav>

    <div class="fondo">
        <xsl:for-each select="mangas/manga">
        <article class="articulosXSL">
            <h2><xsl:value-of select="titulo"/></h2>

            <p class="sinopsis">
                <xsl:value-of select="sinopsis"/>
            </p>

            <button class="btn-mostrar">Mostrar más</button>

            <p>
                <strong><xsl:value-of select="volumen"/></strong>
            </p>

            <img width="20%" src="{imagen}" alt="Portada del manga" class="portada1"/>

            <h4>¿Dónde comprar?</h4>
            <p>
                <xsl:if test="string(compras/amazon) != ''">
                    <a class="tamaño_logos" href="{compras/amazon}">
                        <img src="../../../../Íconos/Amazon.png" alt="Amazon" width="10%"/>
                    </a>
                </xsl:if>

                <xsl:if test="string(compras/casadellibro) != ''">
                    <a class="tamaño_logos" href="{compras/casadellibro}">
                        <img src="../../../../Íconos/CasaDelLibro.png" alt="Casa del Libro" width="10%"/>
                    </a>
                </xsl:if>

            </p>
        </article>
        </xsl:for-each>
    </div>

    <footer>
        <h3>Información</h3>
        
        <p class="centrado">
        <a href="../../../../Información/Derechos de autor.html">Derechos de autor</a>
        <a href="../../../../Información/Políticas de privacidad.html">Políticas de privacidad</a>
        <a href="https://www.instagram.com">Instagram <img class="logos" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/640px-Instagram_icon.png" alt="No se pudo cargar la imagen"></img></a>
        <a href="https://www.facebook.com">Facebook <img class="logos" src="https://cdn.pixabay.com/photo/2021/08/10/17/03/facebook-6536473_960_720.png" alt="No se pudo cargar la imagen"></img></a>
        </p>
    </footer>
    
    <script src="../../../../JavaScript.js"></script>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
