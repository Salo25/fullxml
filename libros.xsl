<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!DOCTYPE html>
		<html lang="es">
			<head>
				<meta charset="utf-8"/>
				<link rel="stylesheet" type="text/css" href="libros.css"/>
			</head>
			<body>
				<h1><u>Grandes Libros de Cenec</u></h1>
				<div>
					<xsl:for-each select="/obras/obra">
						<div>
							<h2>
								<span>OBRA: <xsl:value-of select="title"/></span>
							</h2>
							<p>
								<ul>
									<li>Año: <span><xsl:value-of select="year"></xsl:value-of></span></li>
									<li>Precio: <span class="precios"><b><xsl:value-of select="price"/></b></span><span><xsl:value-of select="price/@badge"/></span></li>
									<li>
																	Idioma:
																	<span/>
																	<xsl:choose>
																		<xsl:when test="title/@lang = 'es'">
																			<span>Español</span>
																		</xsl:when>
																		<xsl:when test="title/@lang = 'pt'">
																			<span>Portugués</span>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>Inglés</span>
																		</xsl:otherwise>
																	</xsl:choose>
									</li>
								</ul>
							</p>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
