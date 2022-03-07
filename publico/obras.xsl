<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8"/>
				<link rel="stylesheet" type="text/css" href="obras.css"/>
			</head>
			<body>
				<h1><u>Grandes Obras de Cenec</u></h1>
				<div>
					<xsl:for-each select="/obras/obra">
						<div>
							<h2>
								<xsl:value-of select="title"/>:<span/>
								<span class="precios">
									<span>
										<xsl:value-of select="price"/>
									</span>
									<span>
										<xsl:value-of select="price/@badge"/>
									</span>
								</span>
							</h2>
							<p>Año: <span><xsl:value-of select="year"></xsl:value-of></span></p>
							<p>Precio: <span class="precios"><br><xsl:value-of select="price"/></br></span><span><xsl:value-of select="price/@badge"/></span></p>
							<p>
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
							</p>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
