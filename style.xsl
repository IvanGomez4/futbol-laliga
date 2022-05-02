<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		<html lang="en">
			<head>
				<title>Liga Azarquiel</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
			</head>
			<body>
				
				<div class="container shadow p-0">
					<nav class="navbar navbar-expand-sm navbar-light bg-danger">
						<img src="{jornada/imagen}" width="100"/>
						<div class="collapse navbar-collapse" id="collapsibleNavId">
							<ul class="navbar-nav mx-auto mt-2 mt-lg-0 text-white">
								<li class="nav-item">
									<h2 class="mr-5"><xsl:value-of select="jornada/denominacion"/></h2>
								</li>
							</ul>
						</div>
					</nav>
					<hr/>
					<h2 class="bg-light text-danger text-center ml-5">Jornada Nº <xsl:value-of select="jornada/@numero"/></h2>
					<hr/>
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<tbody>
								<xsl:for-each select="jornada/partido">
									<tr>
										<td class="align-middle"><h5><xsl:value-of select="@fecha"/> - <xsl:value-of select="@hora"/></h5></td>
										<td><img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{local/@escudo}.png" alt="" /></td>
										<td class="align-middle"><h4><xsl:value-of select="local"/></h4></td>
										<td class="align-middle text-center"><h2><xsl:value-of select="goleslocal"/></h2></td>
										<td class="align-middle text-center"><h2><xsl:value-of select="golesvistante"/></h2></td>
										<td class="align-middle text-right"><h4><xsl:value-of select="visitante"/></h4></td>
										<td class="text-right"><img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{visitante/@escudo}.png" alt="" /></td>
										<xsl:choose>
											<xsl:when test="goleslocal &gt; golesvistante">
												<td class="align-middle bg-dark text-white text-center"><h2>1</h2></td>		
											</xsl:when>
											<xsl:otherwise>
												<td class="align-middle bg-dark text-white text-center"><h2></h2></td>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="goleslocal = golesvistante">
												<td class="align-middle bg-dark text-white text-center"><h2>X</h2></td>		
											</xsl:when>
											<xsl:otherwise>
												<td class="align-middle bg-dark text-white text-center"><h2></h2></td>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="goleslocal &lt; golesvistante">
												<td class="align-middle bg-dark text-white text-center"><h2>2</h2></td>		
											</xsl:when>
											<xsl:otherwise>
												<td class="align-middle bg-dark text-white text-center"><h2></h2></td>
											</xsl:otherwise>
										</xsl:choose>
										
									</tr>
								</xsl:for-each>
								
							</tbody>
						</table>
						<footer class="text-white bg-danger text-center py-2">
							<h2>Azarquiel - DTD XML XSL - Iván Gómez</h2>
						</footer>
					</div>
				</div>
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>