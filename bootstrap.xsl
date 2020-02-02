<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                <title><xsl:value-of select="page//@title"/></title>
                <link href="css/bootstrap.min.css" rel="stylesheet"/>
            </head>
            <body>
                <xsl:apply-templates/>
                <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" type="text/javascript"/>
                <script src="js/bootstrap.bundle.min.js" type="text/javascript"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="navbar">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="#"><xsl:value-of select="@brand"/></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars" aria-controls="navbars" aria-expanded="false" aria-toggle="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbars">
                <ul class="navbar-nav mr-auto">
                    <xsl:for-each select="item">
                        <xsl:choose>
                            <xsl:when test="@active">
                                <li class="nav-item active">
                                    <a class="nav-link" href="{@href}"><xsl:value-of select="@title"/></a>
                                </li>
                            </xsl:when>
                            <xsl:when test="@disabled">
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="{@href}"><xsl:value-of select="@title"/></a>
                                </li>
                            </xsl:when>
                            <xsl:when test="item">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="{@id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><xsl:value-of select="@title"/></a>
                                    <div class="dropdown-menu" aria-labelledby="{@id}">
                                        <xsl:for-each select="item">
                                            <a class="dropdown-item" href="{@href}"><xsl:value-of select="@title"/></a>
                                        </xsl:for-each>
                                    </div>
                                </li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li class="nav-item">
                                    <a class="nav-link" href="{@href}"><xsl:value-of select="@title"/></a>
                                </li>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </ul>
            </div>
        </nav>
    </xsl:template>
</xsl:stylesheet>
