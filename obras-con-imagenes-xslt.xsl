<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:tamplate match="/">
	
		<html>
			<head></head>
			<body>
				<div>
					<xsl:for-each select="obras/obra">
						<div>
							<div>
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="imgpath"/>
									</xsl:attribute>
								</img>
							</div>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
		
	</xsl:tamplate>
</xsl:stylesheet>